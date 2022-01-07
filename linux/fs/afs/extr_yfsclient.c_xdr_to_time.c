
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct yfs_xdr_u64 {int dummy; } ;
struct timespec64 {int dummy; } ;
typedef int s64 ;


 int xdr_to_u64 (struct yfs_xdr_u64 const) ;
 struct timespec64 yfs_time_to_linux (int ) ;

__attribute__((used)) static struct timespec64 xdr_to_time(const struct yfs_xdr_u64 xdr)
{
 s64 t = xdr_to_u64(xdr);

 return yfs_time_to_linux(t);
}
