
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int __be32 ;


 int * memcpy (int *,char const*,unsigned int) ;
 int memset (int *,int ,unsigned int) ;
 int * xdr_encode_u32 (int *,unsigned int) ;

__attribute__((used)) static __be32 *xdr_encode_string(__be32 *bp, const char *p, unsigned int len)
{
 bp = xdr_encode_u32(bp, len);
 bp = memcpy(bp, p, len);
 if (len & 3) {
  unsigned int pad = 4 - (len & 3);

  memset((u8 *)bp + len, 0, pad);
  len += pad;
 }

 return bp + len / sizeof(__be32);
}
