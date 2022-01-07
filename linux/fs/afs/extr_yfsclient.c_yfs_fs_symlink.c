
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct yfs_xdr_YFSVolSync {int dummy; } ;
struct yfs_xdr_YFSStoreStatus {int dummy; } ;
struct yfs_xdr_YFSFid {int dummy; } ;
struct yfs_xdr_YFSFetchStatus {int dummy; } ;
struct yfs_xdr_RPCFlags {int dummy; } ;
struct afs_vnode {int fid; } ;
struct afs_status_cb {int dummy; } ;
struct afs_net {int dummy; } ;
struct afs_fs_cursor {int ac; int cbi; int key; struct afs_vnode* vnode; } ;
struct afs_fid {int dummy; } ;
struct afs_call {int * request; struct afs_status_cb* out_scb; struct afs_fid* out_fid; struct afs_status_cb* out_dir_scb; int key; } ;
typedef int __be32 ;


 int ENOMEM ;
 int GFP_NOFS ;
 int S_IRWXUGO ;
 int YFSSYMLINK ;
 int _enter (char*) ;
 struct afs_call* afs_alloc_flat_call (struct afs_net*,int *,scalar_t__,int) ;
 int afs_make_call (int *,struct afs_call*,int ) ;
 int afs_set_fc_call (struct afs_call*,struct afs_fs_cursor*) ;
 int afs_use_fs_server (struct afs_call*,int ) ;
 struct afs_net* afs_v2net (struct afs_vnode*) ;
 int afs_wait_for_call_to_complete (struct afs_call*,int *) ;
 size_t strlen (char const*) ;
 int trace_afs_make_fs_call1 (struct afs_call*,int *,char const*) ;
 int * xdr_encode_YFSFid (int *,int *) ;
 int * xdr_encode_YFSStoreStatus_mode (int *,int ) ;
 int * xdr_encode_string (int *,char const*,size_t) ;
 int * xdr_encode_u32 (int *,int ) ;
 scalar_t__ xdr_strlen (size_t) ;
 int yfs_RXYFSSymlink ;
 int yfs_check_req (struct afs_call*,int *) ;

int yfs_fs_symlink(struct afs_fs_cursor *fc,
     const char *name,
     const char *contents,
     struct afs_status_cb *dvnode_scb,
     struct afs_fid *newfid,
     struct afs_status_cb *vnode_scb)
{
 struct afs_vnode *dvnode = fc->vnode;
 struct afs_call *call;
 struct afs_net *net = afs_v2net(dvnode);
 size_t namesz, contents_sz;
 __be32 *bp;

 _enter("");

 namesz = strlen(name);
 contents_sz = strlen(contents);
 call = afs_alloc_flat_call(net, &yfs_RXYFSSymlink,
       sizeof(__be32) +
       sizeof(struct yfs_xdr_RPCFlags) +
       sizeof(struct yfs_xdr_YFSFid) +
       xdr_strlen(namesz) +
       xdr_strlen(contents_sz) +
       sizeof(struct yfs_xdr_YFSStoreStatus),
       sizeof(struct yfs_xdr_YFSFid) +
       sizeof(struct yfs_xdr_YFSFetchStatus) +
       sizeof(struct yfs_xdr_YFSFetchStatus) +
       sizeof(struct yfs_xdr_YFSVolSync));
 if (!call)
  return -ENOMEM;

 call->key = fc->key;
 call->out_dir_scb = dvnode_scb;
 call->out_fid = newfid;
 call->out_scb = vnode_scb;


 bp = call->request;
 bp = xdr_encode_u32(bp, YFSSYMLINK);
 bp = xdr_encode_u32(bp, 0);
 bp = xdr_encode_YFSFid(bp, &dvnode->fid);
 bp = xdr_encode_string(bp, name, namesz);
 bp = xdr_encode_string(bp, contents, contents_sz);
 bp = xdr_encode_YFSStoreStatus_mode(bp, S_IRWXUGO);
 yfs_check_req(call, bp);

 afs_use_fs_server(call, fc->cbi);
 trace_afs_make_fs_call1(call, &dvnode->fid, name);
 afs_set_fc_call(call, fc);
 afs_make_call(&fc->ac, call, GFP_NOFS);
 return afs_wait_for_call_to_complete(call, &fc->ac);
}
