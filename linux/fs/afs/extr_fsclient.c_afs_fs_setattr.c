
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iattr {int ia_valid; } ;
struct TYPE_5__ {int unique; int vnode; int vid; } ;
struct afs_vnode {TYPE_2__ fid; } ;
struct afs_status_cb {int dummy; } ;
struct afs_net {int dummy; } ;
struct afs_fs_cursor {int ac; TYPE_3__* cbi; int key; struct afs_vnode* vnode; } ;
struct afs_call {int * request; struct afs_status_cb* out_scb; int key; } ;
typedef int __be32 ;
struct TYPE_6__ {TYPE_1__* server; } ;
struct TYPE_4__ {int flags; } ;


 int AFS_SERVER_FL_IS_YFS ;
 int ATTR_SIZE ;
 int ENOMEM ;
 int FSSTORESTATUS ;
 int GFP_NOFS ;
 int _enter (char*,int ,int ,int ) ;
 int afs_RXFSStoreStatus ;
 struct afs_call* afs_alloc_flat_call (struct afs_net*,int *,int,int) ;
 int afs_fs_setattr_size (struct afs_fs_cursor*,struct iattr*,struct afs_status_cb*) ;
 int afs_make_call (int *,struct afs_call*,int ) ;
 int afs_set_fc_call (struct afs_call*,struct afs_fs_cursor*) ;
 int afs_use_fs_server (struct afs_call*,TYPE_3__*) ;
 struct afs_net* afs_v2net (struct afs_vnode*) ;
 int afs_wait_for_call_to_complete (struct afs_call*,int *) ;
 void* htonl (int ) ;
 int key_serial (int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int trace_afs_make_fs_call (struct afs_call*,TYPE_2__*) ;
 int xdr_encode_AFS_StoreStatus (int **,struct iattr*) ;
 int yfs_fs_setattr (struct afs_fs_cursor*,struct iattr*,struct afs_status_cb*) ;

int afs_fs_setattr(struct afs_fs_cursor *fc, struct iattr *attr,
     struct afs_status_cb *scb)
{
 struct afs_vnode *vnode = fc->vnode;
 struct afs_call *call;
 struct afs_net *net = afs_v2net(vnode);
 __be32 *bp;

 if (test_bit(AFS_SERVER_FL_IS_YFS, &fc->cbi->server->flags))
  return yfs_fs_setattr(fc, attr, scb);

 if (attr->ia_valid & ATTR_SIZE)
  return afs_fs_setattr_size(fc, attr, scb);

 _enter(",%x,{%llx:%llu},,",
        key_serial(fc->key), vnode->fid.vid, vnode->fid.vnode);

 call = afs_alloc_flat_call(net, &afs_RXFSStoreStatus,
       (4 + 6) * 4,
       (21 + 6) * 4);
 if (!call)
  return -ENOMEM;

 call->key = fc->key;
 call->out_scb = scb;


 bp = call->request;
 *bp++ = htonl(FSSTORESTATUS);
 *bp++ = htonl(vnode->fid.vid);
 *bp++ = htonl(vnode->fid.vnode);
 *bp++ = htonl(vnode->fid.unique);

 xdr_encode_AFS_StoreStatus(&bp, attr);

 afs_use_fs_server(call, fc->cbi);
 trace_afs_make_fs_call(call, &vnode->fid);
 afs_set_fc_call(call, fc);
 afs_make_call(&fc->ac, call, GFP_NOFS);
 return afs_wait_for_call_to_complete(call, &fc->ac);
}
