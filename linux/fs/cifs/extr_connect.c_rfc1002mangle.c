
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void rfc1002mangle(char *target, char *source, unsigned int length)
{
 unsigned int i, j;

 for (i = 0, j = 0; i < (length); i++) {

  target[j] = 'A' + (0x0F & (source[i] >> 4));
  target[j+1] = 'A' + (0x0F & source[i]);
  j += 2;
 }

}
