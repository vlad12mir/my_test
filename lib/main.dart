import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        appBar: AppBar(
          title: Text('Counter'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Tap \'-\' to decrement',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              MyAppFull(),
              const Text(
                'Tap \'+\' to increment',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyAppFull extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyAppFull> {
  int _counter = 50;

  Widget _total() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(
            5), // use instead of BorderRadius.all(Radius.circular(20))
      ),
      height: 50,
      width: 120,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _decrement(),
          Text(
            '$_counter',
            textAlign: TextAlign.center,
          ),
          _increment(),
        ],
      ),
    );
  }

  Widget _increment() {
    return IconButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        setState(() {
          _counter++;
        });
      },
      icon: const Icon(
        Icons.add,
        size: 50,
        color: Colors.white70,
      ),
    );
  }

  Widget _decrement() {
    return IconButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        setState(() {
          _counter--;
        });
      },
      icon: const Icon(
        Icons.remove,
        size: 50,
        color: Colors.white70,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _total();
  }
}
