
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asn1_ctx {unsigned char* pointer; int error; } ;


 int ASN1_ERR_DEC_BADVALUE ;
 int GFP_ATOMIC ;
 int UINT_MAX ;
 int asn1_subid_decode (struct asn1_ctx*,unsigned long*) ;
 int kfree (unsigned long*) ;
 unsigned long* kmalloc_array (unsigned int,int,int ) ;

__attribute__((used)) static int
asn1_oid_decode(struct asn1_ctx *ctx,
  unsigned char *eoc, unsigned long **oid, unsigned int *len)
{
 unsigned long subid;
 unsigned int size;
 unsigned long *optr;

 size = eoc - ctx->pointer + 1;


 if (size < 2 || size > UINT_MAX/sizeof(unsigned long))
  return 0;

 *oid = kmalloc_array(size, sizeof(unsigned long), GFP_ATOMIC);
 if (*oid == ((void*)0))
  return 0;

 optr = *oid;

 if (!asn1_subid_decode(ctx, &subid)) {
  kfree(*oid);
  *oid = ((void*)0);
  return 0;
 }

 if (subid < 40) {
  optr[0] = 0;
  optr[1] = subid;
 } else if (subid < 80) {
  optr[0] = 1;
  optr[1] = subid - 40;
 } else {
  optr[0] = 2;
  optr[1] = subid - 80;
 }

 *len = 2;
 optr += 2;

 while (ctx->pointer < eoc) {
  if (++(*len) > size) {
   ctx->error = ASN1_ERR_DEC_BADVALUE;
   kfree(*oid);
   *oid = ((void*)0);
   return 0;
  }

  if (!asn1_subid_decode(ctx, optr++)) {
   kfree(*oid);
   *oid = ((void*)0);
   return 0;
  }
 }
 return 1;
}
