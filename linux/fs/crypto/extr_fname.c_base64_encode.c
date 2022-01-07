
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 void** lookup_table ;

__attribute__((used)) static int base64_encode(const u8 *src, int len, char *dst)
{
 int i, bits = 0, ac = 0;
 char *cp = dst;

 for (i = 0; i < len; i++) {
  ac += src[i] << bits;
  bits += 8;
  do {
   *cp++ = lookup_table[ac & 0x3f];
   ac >>= 6;
   bits -= 6;
  } while (bits >= 6);
 }
 if (bits)
  *cp++ = lookup_table[ac & 0x3f];
 return cp - dst;
}
