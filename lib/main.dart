import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widgets Básicos',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LDSW - DAM - Francisco Javier Trujillo Pedroza'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Ejemplo de Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Esto es Row: '),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.blue,
                ),
                Text(' Texto 2'),
              ],
            ),
            SizedBox(height: 20),

            // Ejemplo de Column
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Esto es column'),
                Icon(Icons.favorite, color: Colors.red),
                Text('Texto Abajo'),
              ],
            ),
            SizedBox(height: 20),

            // Ejemplo de Stack
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.green,
                ),
              ],
            ),
            SizedBox(height: 20),

            // Ejemplo de Container con Text y borde
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
              ),
              padding: EdgeInsets.all(10),
              child: Text('Texto dentro de Container'),
            ),
          ],
        ),
      ),
    );
  }
}
