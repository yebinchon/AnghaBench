
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static void sprom_get_mac(char *mac, const u16 *in)
{
 int i;
 for (i = 0; i < 3; i++) {
  *mac++ = in[i] >> 8;
  *mac++ = in[i];
 }
}
