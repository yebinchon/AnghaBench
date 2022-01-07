
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct yfs_xdr_YFSVolSync {int dummy; } ;
struct yfs_xdr_YFSFid {int dummy; } ;
struct yfs_xdr_YFSFetchStatus {int dummy; } ;
struct yfs_xdr_RPCFlags {int dummy; } ;
struct afs_vnode {int fid; } ;
struct afs_status_cb {int dummy; } ;
struct afs_net {int dummy; } ;
struct afs_fs_cursor {int ac; int cbi; int key; struct afs_vnode* vnode; } ;
struct afs_call {int * request; struct afs_status_cb* out_scb; struct afs_status_cb* out_dir_scb; int key; } ;
typedef int __be32 ;


 int ENOMEM ;
 int GFP_NOFS ;
 int YFSRENAME ;
 int _enter (char*) ;
 struct afs_call* afs_alloc_flat_call (struct afs_net*,int *,scalar_t__,int) ;
 int afs_make_call (int *,struct afs_call*,int ) ;
 int afs_set_fc_call (struct afs_call*,struct afs_fs_cursor*) ;
 int afs_use_fs_server (struct afs_call*,int ) ;
 struct afs_net* afs_v2net (struct afs_vnode*) ;
 int afs_wait_for_call_to_complete (struct afs_call*,int *) ;
 size_t strlen (char const*) ;
 int trace_afs_make_fs_call2 (struct afs_call*,int *,char const*,char const*) ;
 int * xdr_encode_YFSFid (int *,int *) ;
 int * xdr_encode_string (int *,char const*,size_t) ;
 int * xdr_encode_u32 (int *,int ) ;
 scalar_t__ xdr_strlen (size_t) ;
 int yfs_RXYFSRename ;
 int yfs_check_req (struct afs_call*,int *) ;

int yfs_fs_rename(struct afs_fs_cursor *fc,
    const char *orig_name,
    struct afs_vnode *new_dvnode,
    const char *new_name,
    struct afs_status_cb *orig_dvnode_scb,
    struct afs_status_cb *new_dvnode_scb)
{
 struct afs_vnode *orig_dvnode = fc->vnode;
 struct afs_call *call;
 struct afs_net *net = afs_v2net(orig_dvnode);
 size_t o_namesz, n_namesz;
 __be32 *bp;

 _enter("");

 o_namesz = strlen(orig_name);
 n_namesz = strlen(new_name);
 call = afs_alloc_flat_call(net, &yfs_RXYFSRename,
       sizeof(__be32) +
       sizeof(struct yfs_xdr_RPCFlags) +
       sizeof(struct yfs_xdr_YFSFid) +
       xdr_strlen(o_namesz) +
       sizeof(struct yfs_xdr_YFSFid) +
       xdr_strlen(n_namesz),
       sizeof(struct yfs_xdr_YFSFetchStatus) +
       sizeof(struct yfs_xdr_YFSFetchStatus) +
       sizeof(struct yfs_xdr_YFSVolSync));
 if (!call)
  return -ENOMEM;

 call->key = fc->key;
 call->out_dir_scb = orig_dvnode_scb;
 call->out_scb = new_dvnode_scb;


 bp = call->request;
 bp = xdr_encode_u32(bp, YFSRENAME);
 bp = xdr_encode_u32(bp, 0);
 bp = xdr_encode_YFSFid(bp, &orig_dvnode->fid);
 bp = xdr_encode_string(bp, orig_name, o_namesz);
 bp = xdr_encode_YFSFid(bp, &new_dvnode->fid);
 bp = xdr_encode_string(bp, new_name, n_namesz);
 yfs_check_req(call, bp);

 afs_use_fs_server(call, fc->cbi);
 trace_afs_make_fs_call2(call, &orig_dvnode->fid, orig_name, new_name);
 afs_set_fc_call(call, fc);
 afs_make_call(&fc->ac, call, GFP_NOFS);
 return afs_wait_for_call_to_complete(call, &fc->ac);
}
