
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct afs_volsync {int dummy; } ;
struct TYPE_7__ {int unique; int vnode; int vid; } ;
struct afs_vnode {TYPE_2__ fid; } ;
struct afs_status_cb {int dummy; } ;
struct afs_net {int dummy; } ;
struct TYPE_8__ {int error; } ;
struct afs_fs_cursor {TYPE_3__ ac; TYPE_4__* cbi; int key; struct afs_vnode* vnode; } ;
struct afs_call {int * request; struct afs_volsync* out_volsync; struct afs_status_cb* out_scb; int key; } ;
typedef int __be32 ;
struct TYPE_9__ {TYPE_1__* server; } ;
struct TYPE_6__ {int flags; } ;


 int AFS_SERVER_FL_IS_YFS ;
 int ENOMEM ;
 int FSFETCHSTATUS ;
 int GFP_NOFS ;
 int _enter (char*,int ,int ,int ) ;
 int afs_RXFSFetchStatus_vnode ;
 struct afs_call* afs_alloc_flat_call (struct afs_net*,int *,int,int) ;
 int afs_make_call (TYPE_3__*,struct afs_call*,int ) ;
 int afs_set_fc_call (struct afs_call*,struct afs_fs_cursor*) ;
 int afs_use_fs_server (struct afs_call*,TYPE_4__*) ;
 struct afs_net* afs_v2net (struct afs_vnode*) ;
 int afs_wait_for_call_to_complete (struct afs_call*,TYPE_3__*) ;
 int htonl (int ) ;
 int key_serial (int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int trace_afs_make_fs_call (struct afs_call*,TYPE_2__*) ;
 int yfs_fs_fetch_file_status (struct afs_fs_cursor*,struct afs_status_cb*,struct afs_volsync*) ;

int afs_fs_fetch_file_status(struct afs_fs_cursor *fc, struct afs_status_cb *scb,
        struct afs_volsync *volsync)
{
 struct afs_vnode *vnode = fc->vnode;
 struct afs_call *call;
 struct afs_net *net = afs_v2net(vnode);
 __be32 *bp;

 if (test_bit(AFS_SERVER_FL_IS_YFS, &fc->cbi->server->flags))
  return yfs_fs_fetch_file_status(fc, scb, volsync);

 _enter(",%x,{%llx:%llu},,",
        key_serial(fc->key), vnode->fid.vid, vnode->fid.vnode);

 call = afs_alloc_flat_call(net, &afs_RXFSFetchStatus_vnode,
       16, (21 + 3 + 6) * 4);
 if (!call) {
  fc->ac.error = -ENOMEM;
  return -ENOMEM;
 }

 call->key = fc->key;
 call->out_scb = scb;
 call->out_volsync = volsync;


 bp = call->request;
 bp[0] = htonl(FSFETCHSTATUS);
 bp[1] = htonl(vnode->fid.vid);
 bp[2] = htonl(vnode->fid.vnode);
 bp[3] = htonl(vnode->fid.unique);

 afs_use_fs_server(call, fc->cbi);
 trace_afs_make_fs_call(call, &vnode->fid);

 afs_set_fc_call(call, fc);
 afs_make_call(&fc->ac, call, GFP_NOFS);
 return afs_wait_for_call_to_complete(call, &fc->ac);
}
