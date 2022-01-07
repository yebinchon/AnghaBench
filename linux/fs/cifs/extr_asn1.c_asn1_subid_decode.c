
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asn1_ctx {int dummy; } ;


 int asn1_octet_decode (struct asn1_ctx*,unsigned char*) ;

__attribute__((used)) static unsigned char
asn1_subid_decode(struct asn1_ctx *ctx, unsigned long *subid)
{
 unsigned char ch;

 *subid = 0;

 do {
  if (!asn1_octet_decode(ctx, &ch))
   return 0;

  *subid <<= 7;
  *subid |= ch & 0x7F;
 } while ((ch & 0x80) == 0x80);
 return 1;
}
