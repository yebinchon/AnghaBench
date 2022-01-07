
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int sint ;



__attribute__((used)) static void xor_32(u8 *a, u8 *b, u8 *out)
{
 sint i;

 for (i = 0; i < 4; i++)
  out[i] = a[i] ^ b[i];
}
