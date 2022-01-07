
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct yfs_xdr_u64 {int lsw; int msw; } ;


 int ntohl (int ) ;

__attribute__((used)) static inline u64 xdr_to_u64(const struct yfs_xdr_u64 x)
{
 return ((u64)ntohl(x.msw) << 32) | ntohl(x.lsw);
}
