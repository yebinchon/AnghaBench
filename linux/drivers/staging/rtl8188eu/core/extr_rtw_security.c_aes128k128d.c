
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int byte_sub (int *,int *) ;
 int mix_column (int *,int *) ;
 int next_key (int *,int) ;
 int shift_row (int *,int *) ;
 int xor_128 (int *,int *,int *) ;

__attribute__((used)) static void aes128k128d(u8 *key, u8 *data, u8 *ciphertext)
{
 int round;
 int i;
 u8 intermediatea[16];
 u8 intermediateb[16];
 u8 round_key[16];

 for (i = 0; i < 16; i++)
  round_key[i] = key[i];
 for (round = 0; round < 11; round++) {
  if (round == 0) {
   xor_128(round_key, data, ciphertext);
   next_key(round_key, round);
  } else if (round == 10) {
   byte_sub(ciphertext, intermediatea);
   shift_row(intermediatea, intermediateb);
   xor_128(intermediateb, round_key, ciphertext);
  } else {
   byte_sub(ciphertext, intermediatea);
   shift_row(intermediatea, intermediateb);
   mix_column(&intermediateb[0], &intermediatea[0]);
   mix_column(&intermediateb[4], &intermediatea[4]);
   mix_column(&intermediateb[8], &intermediatea[8]);
   mix_column(&intermediateb[12], &intermediatea[12]);
   xor_128(intermediatea, round_key, ciphertext);
   next_key(round_key, round);
  }
 }
}
