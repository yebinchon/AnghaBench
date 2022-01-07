
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int __be32 ;


 int htonl (int ) ;

__attribute__((used)) static __be32 *xdr_encode_u32(__be32 *bp, u32 n)
{
 *bp++ = htonl(n);
 return bp;
}
