
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct yfs_xdr_YFSVolSync {int dummy; } ;
struct yfs_xdr_YFSFid {int dummy; } ;
struct yfs_xdr_YFSFetchStatus {int dummy; } ;
struct TYPE_5__ {int vnode; int vid; } ;
struct afs_vnode {TYPE_1__ fid; } ;
struct afs_status_cb {int dummy; } ;
struct afs_net {int dummy; } ;
struct TYPE_6__ {int error; } ;
struct afs_fs_cursor {TYPE_3__ ac; int key; struct afs_vnode* vnode; } ;
struct afs_call {int * request; int * out_volsync; struct afs_status_cb* out_scb; int key; } ;
struct afs_acl {size_t size; int data; } ;
typedef int __be32 ;


 int ENOMEM ;
 int GFP_KERNEL ;
 size_t YFSSTOREOPAQUEACL2 ;
 int _enter (char*,int ,int ,int ) ;
 struct afs_call* afs_alloc_flat_call (struct afs_net*,int *,int,int) ;
 int afs_make_call (TYPE_3__*,struct afs_call*,int ) ;
 struct afs_net* afs_v2net (struct afs_vnode*) ;
 int afs_wait_for_call_to_complete (struct afs_call*,TYPE_3__*) ;
 int key_serial (int ) ;
 int memcpy (int *,int ,size_t) ;
 int memset (void*,int ,size_t) ;
 size_t round_up (size_t,int) ;
 int trace_afs_make_fs_call (struct afs_call*,TYPE_1__*) ;
 int * xdr_encode_YFSFid (int *,TYPE_1__*) ;
 int * xdr_encode_u32 (int *,size_t) ;
 int yfs_RXYFSStoreOpaqueACL2 ;
 int yfs_check_req (struct afs_call*,int *) ;

int yfs_fs_store_opaque_acl2(struct afs_fs_cursor *fc, const struct afs_acl *acl,
        struct afs_status_cb *scb)
{
 struct afs_vnode *vnode = fc->vnode;
 struct afs_call *call;
 struct afs_net *net = afs_v2net(vnode);
 size_t size;
 __be32 *bp;

 _enter(",%x,{%llx:%llu},,",
        key_serial(fc->key), vnode->fid.vid, vnode->fid.vnode);

 size = round_up(acl->size, 4);
 call = afs_alloc_flat_call(net, &yfs_RXYFSStoreOpaqueACL2,
       sizeof(__be32) * 2 +
       sizeof(struct yfs_xdr_YFSFid) +
       sizeof(__be32) + size,
       sizeof(struct yfs_xdr_YFSFetchStatus) +
       sizeof(struct yfs_xdr_YFSVolSync));
 if (!call) {
  fc->ac.error = -ENOMEM;
  return -ENOMEM;
 }

 call->key = fc->key;
 call->out_scb = scb;
 call->out_volsync = ((void*)0);


 bp = call->request;
 bp = xdr_encode_u32(bp, YFSSTOREOPAQUEACL2);
 bp = xdr_encode_u32(bp, 0);
 bp = xdr_encode_YFSFid(bp, &vnode->fid);
 bp = xdr_encode_u32(bp, acl->size);
 memcpy(bp, acl->data, acl->size);
 if (acl->size != size)
  memset((void *)bp + acl->size, 0, size - acl->size);
 yfs_check_req(call, bp);

 trace_afs_make_fs_call(call, &vnode->fid);
 afs_make_call(&fc->ac, call, GFP_KERNEL);
 return afs_wait_for_call_to_complete(call, &fc->ac);
}
