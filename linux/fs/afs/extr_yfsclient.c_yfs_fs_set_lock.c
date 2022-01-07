
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct yfs_xdr_YFSVolSync {int dummy; } ;
struct yfs_xdr_YFSFid {int dummy; } ;
struct yfs_xdr_YFSFetchStatus {int dummy; } ;
struct afs_vnode {int fid; } ;
struct afs_status_cb {int dummy; } ;
struct afs_net {int dummy; } ;
struct afs_fs_cursor {int ac; int cbi; int key; struct afs_vnode* vnode; } ;
struct afs_call {int * request; struct afs_status_cb* out_scb; struct afs_vnode* lvnode; int key; } ;
typedef int afs_lock_type_t ;
typedef int __be32 ;


 int ENOMEM ;
 int GFP_NOFS ;
 int YFSSETLOCK ;
 int _enter (char*) ;
 struct afs_call* afs_alloc_flat_call (struct afs_net*,int *,int,int) ;
 int afs_make_call (int *,struct afs_call*,int ) ;
 int afs_set_fc_call (struct afs_call*,struct afs_fs_cursor*) ;
 int afs_use_fs_server (struct afs_call*,int ) ;
 struct afs_net* afs_v2net (struct afs_vnode*) ;
 int afs_wait_for_call_to_complete (struct afs_call*,int *) ;
 int trace_afs_make_fs_calli (struct afs_call*,int *,int ) ;
 int * xdr_encode_YFSFid (int *,int *) ;
 int * xdr_encode_u32 (int *,int ) ;
 int yfs_RXYFSSetLock ;
 int yfs_check_req (struct afs_call*,int *) ;

int yfs_fs_set_lock(struct afs_fs_cursor *fc, afs_lock_type_t type,
      struct afs_status_cb *scb)
{
 struct afs_vnode *vnode = fc->vnode;
 struct afs_call *call;
 struct afs_net *net = afs_v2net(vnode);
 __be32 *bp;

 _enter("");

 call = afs_alloc_flat_call(net, &yfs_RXYFSSetLock,
       sizeof(__be32) * 2 +
       sizeof(struct yfs_xdr_YFSFid) +
       sizeof(__be32),
       sizeof(struct yfs_xdr_YFSFetchStatus) +
       sizeof(struct yfs_xdr_YFSVolSync));
 if (!call)
  return -ENOMEM;

 call->key = fc->key;
 call->lvnode = vnode;
 call->out_scb = scb;


 bp = call->request;
 bp = xdr_encode_u32(bp, YFSSETLOCK);
 bp = xdr_encode_u32(bp, 0);
 bp = xdr_encode_YFSFid(bp, &vnode->fid);
 bp = xdr_encode_u32(bp, type);
 yfs_check_req(call, bp);

 afs_use_fs_server(call, fc->cbi);
 trace_afs_make_fs_calli(call, &vnode->fid, type);
 afs_set_fc_call(call, fc);
 afs_make_call(&fc->ac, call, GFP_NOFS);
 return afs_wait_for_call_to_complete(call, &fc->ac);
}
