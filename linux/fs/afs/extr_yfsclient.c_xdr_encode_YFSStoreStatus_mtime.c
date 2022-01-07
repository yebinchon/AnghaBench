
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct yfs_xdr_YFSStoreStatus {void* group; void* owner; void* mtime_client; void* mode; void* mask; } ;
struct timespec64 {int dummy; } ;
typedef int s64 ;
typedef int __be32 ;


 int AFS_SET_MTIME ;
 void* htonl (int ) ;
 int linux_to_yfs_time (struct timespec64 const*) ;
 void* u64_to_xdr (int ) ;
 int xdr_size (struct yfs_xdr_YFSStoreStatus*) ;

__attribute__((used)) static __be32 *xdr_encode_YFSStoreStatus_mtime(__be32 *bp, const struct timespec64 *t)
{
 struct yfs_xdr_YFSStoreStatus *x = (void *)bp;
 s64 mtime = linux_to_yfs_time(t);

 x->mask = htonl(AFS_SET_MTIME);
 x->mode = htonl(0);
 x->mtime_client = u64_to_xdr(mtime);
 x->owner = u64_to_xdr(0);
 x->group = u64_to_xdr(0);
 return bp + xdr_size(x);
}
