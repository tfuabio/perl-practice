#!/usr/bin/perl

while (<DATA>) {
  chomp;
  s/""/だぶるだぶるくぉーてーしょん/g;
  s/("([^"]+)")?,?/$2\n/g;
  s/だぶるだぶるくぉーてーしょん/"/g;
  my @cols = split(/\n/);
  print join("\n", @cols)."\n---\n";
}

__DATA__
"1","ab,c",,"{ ""name"": ""fujii"" }"
"2","d,ef",,"{ ""name"": ""yamada"" }"
