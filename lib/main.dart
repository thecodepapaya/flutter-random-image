import 'package:flutter/material.dart';

void main() => runApp(RandomImg());

class RandomImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random Images',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;
  var _imageurl = 'https://source.unsplash.com/random/';

  Widget imageprovider() {
    return Image.network(
      _imageurl,
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
    );
  }

  void _newImage() {
    setState(() {
      _imageurl = 'https://source.unsplash.com/random/$counter';
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: GestureDetector(
            child: imageprovider(),
            onTap: _newImage,
          ),
        ),
      ),
    );
  }
}
