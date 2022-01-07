
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct yfs_xdr_u64 {int dummy; } ;
typedef int __be32 ;


 struct yfs_xdr_u64 u64_to_xdr (int ) ;
 int xdr_size (struct yfs_xdr_u64*) ;

__attribute__((used)) static __be32 *xdr_encode_u64(__be32 *bp, u64 n)
{
 struct yfs_xdr_u64 *x = (void *)bp;

 *x = u64_to_xdr(n);
 return bp + xdr_size(x);
}
