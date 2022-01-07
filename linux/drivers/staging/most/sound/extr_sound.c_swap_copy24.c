
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static void swap_copy24(u8 *dest, const u8 *source, unsigned int bytes)
{
 unsigned int i = 0;

 while (i < bytes - 2) {
  dest[i] = source[i + 2];
  dest[i + 1] = source[i + 1];
  dest[i + 2] = source[i];
  i += 3;
 }
}
