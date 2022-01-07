
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int sint ;



__attribute__((used)) static void bitwise_xor(u8 *ina, u8 *inb, u8 *out)
{
  sint i;

  for (i = 0; i < 16; i++) {
   out[i] = ina[i] ^ inb[i];
  }
}
