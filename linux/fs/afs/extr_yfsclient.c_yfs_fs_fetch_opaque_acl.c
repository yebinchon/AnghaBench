
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct yfs_xdr_YFSVolSync {int dummy; } ;
struct yfs_xdr_YFSFid {int dummy; } ;
struct yfs_xdr_YFSFetchStatus {int dummy; } ;
struct yfs_acl {int dummy; } ;
struct TYPE_5__ {int vnode; int vid; } ;
struct afs_vnode {TYPE_1__ fid; } ;
struct afs_status_cb {int dummy; } ;
struct afs_net {int dummy; } ;
struct TYPE_6__ {int error; } ;
struct afs_fs_cursor {TYPE_3__ ac; int cbi; int key; struct afs_vnode* vnode; } ;
struct afs_call {int * request; int * out_volsync; struct afs_status_cb* out_scb; struct yfs_acl* out_yacl; int key; } ;
typedef int __be32 ;


 int ENOMEM ;
 struct yfs_acl* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int YFSFETCHOPAQUEACL ;
 int _enter (char*,int ,int ,int ) ;
 struct afs_call* afs_alloc_flat_call (struct afs_net*,int *,int,int) ;
 int afs_make_call (TYPE_3__*,struct afs_call*,int ) ;
 int afs_use_fs_server (struct afs_call*,int ) ;
 struct afs_net* afs_v2net (struct afs_vnode*) ;
 scalar_t__ afs_wait_for_call_to_complete (struct afs_call*,TYPE_3__*) ;
 int key_serial (int ) ;
 int trace_afs_make_fs_call (struct afs_call*,TYPE_1__*) ;
 int * xdr_encode_YFSFid (int *,TYPE_1__*) ;
 int * xdr_encode_u32 (int *,int ) ;
 int yfs_RXYFSFetchOpaqueACL ;
 int yfs_check_req (struct afs_call*,int *) ;

struct yfs_acl *yfs_fs_fetch_opaque_acl(struct afs_fs_cursor *fc,
     struct yfs_acl *yacl,
     struct afs_status_cb *scb)
{
 struct afs_vnode *vnode = fc->vnode;
 struct afs_call *call;
 struct afs_net *net = afs_v2net(vnode);
 __be32 *bp;

 _enter(",%x,{%llx:%llu},,",
        key_serial(fc->key), vnode->fid.vid, vnode->fid.vnode);

 call = afs_alloc_flat_call(net, &yfs_RXYFSFetchOpaqueACL,
       sizeof(__be32) * 2 +
       sizeof(struct yfs_xdr_YFSFid),
       sizeof(__be32) * 2 +
       sizeof(struct yfs_xdr_YFSFetchStatus) +
       sizeof(struct yfs_xdr_YFSVolSync));
 if (!call) {
  fc->ac.error = -ENOMEM;
  return ERR_PTR(-ENOMEM);
 }

 call->key = fc->key;
 call->out_yacl = yacl;
 call->out_scb = scb;
 call->out_volsync = ((void*)0);


 bp = call->request;
 bp = xdr_encode_u32(bp, YFSFETCHOPAQUEACL);
 bp = xdr_encode_u32(bp, 0);
 bp = xdr_encode_YFSFid(bp, &vnode->fid);
 yfs_check_req(call, bp);

 afs_use_fs_server(call, fc->cbi);
 trace_afs_make_fs_call(call, &vnode->fid);
 afs_make_call(&fc->ac, call, GFP_KERNEL);
 return (struct yfs_acl *)afs_wait_for_call_to_complete(call, &fc->ac);
}
