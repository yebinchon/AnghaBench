
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 char const* lookup_table ;
 char* strchr (char const*,char const) ;

__attribute__((used)) static int base64_decode(const char *src, int len, u8 *dst)
{
 int i, bits = 0, ac = 0;
 const char *p;
 u8 *cp = dst;

 for (i = 0; i < len; i++) {
  p = strchr(lookup_table, src[i]);
  if (p == ((void*)0) || src[i] == 0)
   return -2;
  ac += (p - lookup_table) << bits;
  bits += 6;
  if (bits >= 8) {
   *cp++ = ac & 0xff;
   ac >>= 8;
   bits -= 8;
  }
 }
 if (ac)
  return -1;
 return cp - dst;
}
