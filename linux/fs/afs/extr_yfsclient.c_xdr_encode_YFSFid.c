
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* unique; void* hi; void* lo; } ;
struct yfs_xdr_YFSFid {TYPE_1__ vnode; void* volume; } ;
struct afs_fid {int unique; int vnode_hi; int vnode; int vid; } ;
typedef int __be32 ;


 void* htonl (int ) ;
 void* u64_to_xdr (int ) ;
 int xdr_size (struct yfs_xdr_YFSFid*) ;

__attribute__((used)) static __be32 *xdr_encode_YFSFid(__be32 *bp, struct afs_fid *fid)
{
 struct yfs_xdr_YFSFid *x = (void *)bp;

 x->volume = u64_to_xdr(fid->vid);
 x->vnode.lo = u64_to_xdr(fid->vnode);
 x->vnode.hi = htonl(fid->vnode_hi);
 x->vnode.unique = htonl(fid->unique);
 return bp + xdr_size(x);
}
