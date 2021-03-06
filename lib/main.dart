import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded buildKey(int number, Color col) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(number);
        },
        color: col,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(1, Colors.red),
              buildKey(2, Colors.orange),
              buildKey(3, Colors.yellow),
              buildKey(4, Colors.lightGreenAccent),
              buildKey(5, Colors.green),
              buildKey(6, Colors.blue),
              buildKey(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
