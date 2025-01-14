
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int hex_to_bin (char) ;
 int isxdigit (char) ;

__attribute__((used)) static int encode_ie(char *in, u8 *out, int maxlen)
{
 int l = 0;
 while (*in) {
  if (!isxdigit(in[0]) || !isxdigit(in[1]) || l >= maxlen)
   return -1;
  out[++l] = (hex_to_bin(in[0]) << 4) + hex_to_bin(in[1]);
  in += 2;
 }
 out[0] = l;
 return l;
}
