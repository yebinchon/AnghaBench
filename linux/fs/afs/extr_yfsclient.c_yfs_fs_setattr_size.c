
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct yfs_xdr_u64 {int dummy; } ;
struct yfs_xdr_YFSVolSync {int dummy; } ;
struct yfs_xdr_YFSStoreStatus {int dummy; } ;
struct yfs_xdr_YFSFid {int dummy; } ;
struct yfs_xdr_YFSFetchStatus {int dummy; } ;
struct iattr {int ia_size; } ;
struct TYPE_3__ {int vnode; int vid; } ;
struct afs_vnode {TYPE_1__ fid; } ;
struct afs_status_cb {int dummy; } ;
struct afs_net {int dummy; } ;
struct afs_fs_cursor {int ac; int cbi; int key; struct afs_vnode* vnode; } ;
struct afs_call {int * request; struct afs_status_cb* out_scb; int key; } ;
typedef int __be32 ;


 int ENOMEM ;
 int GFP_NOFS ;
 int YFSSTOREDATA64 ;
 int _enter (char*,int ,int ,int ) ;
 struct afs_call* afs_alloc_flat_call (struct afs_net*,int *,int,int) ;
 int afs_make_call (int *,struct afs_call*,int ) ;
 int afs_set_fc_call (struct afs_call*,struct afs_fs_cursor*) ;
 int afs_use_fs_server (struct afs_call*,int ) ;
 struct afs_net* afs_v2net (struct afs_vnode*) ;
 int afs_wait_for_call_to_complete (struct afs_call*,int *) ;
 int key_serial (int ) ;
 int trace_afs_make_fs_call (struct afs_call*,TYPE_1__*) ;
 int * xdr_encode_YFSFid (int *,TYPE_1__*) ;
 int * xdr_encode_YFS_StoreStatus (int *,struct iattr*) ;
 int * xdr_encode_u32 (int *,int ) ;
 int * xdr_encode_u64 (int *,int ) ;
 int yfs_RXYFSStoreData64_as_Status ;
 int yfs_check_req (struct afs_call*,int *) ;

__attribute__((used)) static int yfs_fs_setattr_size(struct afs_fs_cursor *fc, struct iattr *attr,
          struct afs_status_cb *scb)
{
 struct afs_vnode *vnode = fc->vnode;
 struct afs_call *call;
 struct afs_net *net = afs_v2net(vnode);
 __be32 *bp;

 _enter(",%x,{%llx:%llu},,",
        key_serial(fc->key), vnode->fid.vid, vnode->fid.vnode);

 call = afs_alloc_flat_call(net, &yfs_RXYFSStoreData64_as_Status,
       sizeof(__be32) * 2 +
       sizeof(struct yfs_xdr_YFSFid) +
       sizeof(struct yfs_xdr_YFSStoreStatus) +
       sizeof(struct yfs_xdr_u64) * 3,
       sizeof(struct yfs_xdr_YFSFetchStatus) +
       sizeof(struct yfs_xdr_YFSVolSync));
 if (!call)
  return -ENOMEM;

 call->key = fc->key;
 call->out_scb = scb;


 bp = call->request;
 bp = xdr_encode_u32(bp, YFSSTOREDATA64);
 bp = xdr_encode_u32(bp, 0);
 bp = xdr_encode_YFSFid(bp, &vnode->fid);
 bp = xdr_encode_YFS_StoreStatus(bp, attr);
 bp = xdr_encode_u64(bp, attr->ia_size);
 bp = xdr_encode_u64(bp, 0);
 bp = xdr_encode_u64(bp, attr->ia_size);
 yfs_check_req(call, bp);

 afs_use_fs_server(call, fc->cbi);
 trace_afs_make_fs_call(call, &vnode->fid);
 afs_set_fc_call(call, fc);
 afs_make_call(&fc->ac, call, GFP_NOFS);
 return afs_wait_for_call_to_complete(call, &fc->ac);
}
