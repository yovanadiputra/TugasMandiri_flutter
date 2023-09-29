import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PegawaiApp(),
    );
  }
}

class PegawaiApp extends StatelessWidget {
  final List<Pegawai> daftarPegawai = [
    Pegawai("202301", "David", "01-01-1990", 10000000, "david.jpg"),
    Pegawai("202302", "Reny", "15-03-1985", 15500000, "reny.jpg"),
    Pegawai("202303", "Kiki", "15-03-1995", 10000000, "kiki.jpg"),
    // Tambahkan pegawai lainnya di sini
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplikasi Pegawai'),
      ),
      body: ListView.builder(
        itemCount: daftarPegawai.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage:
                  AssetImage("assets/${daftarPegawai[index].foto}"),
            ),
            title: Text('ID: ${daftarPegawai[index].id}'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Nama: ${daftarPegawai[index].nama}'),
                Text('Tanggal Lahir: ${daftarPegawai[index].tanggalLahir}'),
                Text(
                    'Gaji: \Rp${daftarPegawai[index].gaji.toStringAsFixed(2)}'),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Pegawai {
  final String id;
  final String nama;
  final String tanggalLahir;
  final double gaji;
  final String foto;
  Pegawai(this.id, this.nama, this.tanggalLahir, this.gaji, this.foto);
}
