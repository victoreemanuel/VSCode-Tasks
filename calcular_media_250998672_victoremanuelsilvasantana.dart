import 'dart:io';

double calcularMedia(double nota1, double nota2, double nota3) {
  return (nota1 + nota2 + nota3) / 3;
}

void main() {
  // Solicita as três notas ao usuário
  stdout.write("Digite a primeira nota: ");
  double? nota1 = double.tryParse(stdin.readLineSync() ?? '');

  stdout.write("Digite a segunda nota: ");
  double? nota2 = double.tryParse(stdin.readLineSync() ?? '');

  stdout.write("Digite a terceira nota: ");
  double? nota3 = double.tryParse(stdin.readLineSync() ?? '');

  // Verifica se todas as entradas são válidas
  if (nota1 == null || nota2 == null || nota3 == null) {
    print("Erro: Insira valores numéricos válidos.");
    return;
  }

  // Calcula a média
  double media = calcularMedia(nota1, nota2, nota3);

  // Exibe o resultado formatado
  print("Média: ${media.toStringAsFixed(2)}");

  // Verifica se foi aprovado ou reprovado
  if (media >= 7) {
    print("Aprovado!");
  } else {
    print("Reprovado!");
  }
}
