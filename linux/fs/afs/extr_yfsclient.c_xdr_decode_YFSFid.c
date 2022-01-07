
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int unique; int hi; int lo; } ;
struct yfs_xdr_YFSFid {TYPE_1__ vnode; int volume; } ;
struct afs_fid {void* unique; void* vnode_hi; void* vnode; void* vid; } ;
typedef int __be32 ;


 void* ntohl (int ) ;
 int xdr_size (struct yfs_xdr_YFSFid const*) ;
 void* xdr_to_u64 (int ) ;

__attribute__((used)) static void xdr_decode_YFSFid(const __be32 **_bp, struct afs_fid *fid)
{
 const struct yfs_xdr_YFSFid *x = (const void *)*_bp;

 fid->vid = xdr_to_u64(x->volume);
 fid->vnode = xdr_to_u64(x->vnode.lo);
 fid->vnode_hi = ntohl(x->vnode.hi);
 fid->unique = ntohl(x->vnode.unique);
 *_bp += xdr_size(x);
}
