
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct afs_volume_status {int dummy; } ;
struct TYPE_5__ {int vid; } ;
struct afs_vnode {TYPE_2__ fid; } ;
struct afs_net {int dummy; } ;
struct afs_fs_cursor {int ac; TYPE_3__* cbi; int key; struct afs_vnode* vnode; } ;
struct afs_call {int * request; struct afs_volume_status* out_volstatus; int key; } ;
typedef int __be32 ;
struct TYPE_6__ {TYPE_1__* server; } ;
struct TYPE_4__ {int flags; } ;


 scalar_t__ AFSOPAQUEMAX ;
 int AFS_SERVER_FL_IS_YFS ;
 int ENOMEM ;
 int FSGETVOLUMESTATUS ;
 int GFP_NOFS ;
 int _enter (char*) ;
 int afs_RXFSGetVolumeStatus ;
 struct afs_call* afs_alloc_flat_call (struct afs_net*,int *,int,int ) ;
 int afs_make_call (int *,struct afs_call*,int ) ;
 int afs_set_fc_call (struct afs_call*,struct afs_fs_cursor*) ;
 int afs_use_fs_server (struct afs_call*,TYPE_3__*) ;
 struct afs_net* afs_v2net (struct afs_vnode*) ;
 int afs_wait_for_call_to_complete (struct afs_call*,int *) ;
 int htonl (int ) ;
 int max (int,scalar_t__) ;
 scalar_t__ test_bit (int ,int *) ;
 int trace_afs_make_fs_call (struct afs_call*,TYPE_2__*) ;
 int yfs_fs_get_volume_status (struct afs_fs_cursor*,struct afs_volume_status*) ;

int afs_fs_get_volume_status(struct afs_fs_cursor *fc,
        struct afs_volume_status *vs)
{
 struct afs_vnode *vnode = fc->vnode;
 struct afs_call *call;
 struct afs_net *net = afs_v2net(vnode);
 __be32 *bp;

 if (test_bit(AFS_SERVER_FL_IS_YFS, &fc->cbi->server->flags))
  return yfs_fs_get_volume_status(fc, vs);

 _enter("");

 call = afs_alloc_flat_call(net, &afs_RXFSGetVolumeStatus, 2 * 4,
       max(12 * 4, AFSOPAQUEMAX + 1));
 if (!call)
  return -ENOMEM;

 call->key = fc->key;
 call->out_volstatus = vs;


 bp = call->request;
 bp[0] = htonl(FSGETVOLUMESTATUS);
 bp[1] = htonl(vnode->fid.vid);

 afs_use_fs_server(call, fc->cbi);
 trace_afs_make_fs_call(call, &vnode->fid);
 afs_set_fc_call(call, fc);
 afs_make_call(&fc->ac, call, GFP_NOFS);
 return afs_wait_for_call_to_complete(call, &fc->ac);
}
