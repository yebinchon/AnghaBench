
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int unique; int vnode; int vid; } ;
struct afs_vnode {TYPE_2__ fid; } ;
struct afs_status_cb {int dummy; } ;
struct afs_read {int usage; scalar_t__ len; scalar_t__ pos; } ;
struct afs_net {int dummy; } ;
struct afs_fs_cursor {int ac; TYPE_3__* cbi; int key; struct afs_vnode* vnode; } ;
struct afs_call {int * request; struct afs_read* read_request; int * out_volsync; struct afs_status_cb* out_scb; int key; } ;
typedef int __be32 ;
struct TYPE_6__ {TYPE_1__* server; } ;
struct TYPE_4__ {int flags; } ;


 int AFS_SERVER_FL_IS_YFS ;
 int ENOMEM ;
 int FSFETCHDATA ;
 int GFP_NOFS ;
 int _enter (char*) ;
 int afs_RXFSFetchData ;
 struct afs_call* afs_alloc_flat_call (struct afs_net*,int *,int,int) ;
 int afs_fs_fetch_data64 (struct afs_fs_cursor*,struct afs_status_cb*,struct afs_read*) ;
 int afs_make_call (int *,struct afs_call*,int ) ;
 int afs_set_fc_call (struct afs_call*,struct afs_fs_cursor*) ;
 int afs_use_fs_server (struct afs_call*,TYPE_3__*) ;
 struct afs_net* afs_v2net (struct afs_vnode*) ;
 int afs_wait_for_call_to_complete (struct afs_call*,int *) ;
 int htonl (int ) ;
 int lower_32_bits (scalar_t__) ;
 int refcount_inc (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int trace_afs_make_fs_call (struct afs_call*,TYPE_2__*) ;
 scalar_t__ upper_32_bits (scalar_t__) ;
 int yfs_fs_fetch_data (struct afs_fs_cursor*,struct afs_status_cb*,struct afs_read*) ;

int afs_fs_fetch_data(struct afs_fs_cursor *fc,
        struct afs_status_cb *scb,
        struct afs_read *req)
{
 struct afs_vnode *vnode = fc->vnode;
 struct afs_call *call;
 struct afs_net *net = afs_v2net(vnode);
 __be32 *bp;

 if (test_bit(AFS_SERVER_FL_IS_YFS, &fc->cbi->server->flags))
  return yfs_fs_fetch_data(fc, scb, req);

 if (upper_32_bits(req->pos) ||
     upper_32_bits(req->len) ||
     upper_32_bits(req->pos + req->len))
  return afs_fs_fetch_data64(fc, scb, req);

 _enter("");

 call = afs_alloc_flat_call(net, &afs_RXFSFetchData, 24, (21 + 3 + 6) * 4);
 if (!call)
  return -ENOMEM;

 call->key = fc->key;
 call->out_scb = scb;
 call->out_volsync = ((void*)0);
 call->read_request = req;


 bp = call->request;
 bp[0] = htonl(FSFETCHDATA);
 bp[1] = htonl(vnode->fid.vid);
 bp[2] = htonl(vnode->fid.vnode);
 bp[3] = htonl(vnode->fid.unique);
 bp[4] = htonl(lower_32_bits(req->pos));
 bp[5] = htonl(lower_32_bits(req->len));

 refcount_inc(&req->usage);
 afs_use_fs_server(call, fc->cbi);
 trace_afs_make_fs_call(call, &vnode->fid);
 afs_set_fc_call(call, fc);
 afs_make_call(&fc->ac, call, GFP_NOFS);
 return afs_wait_for_call_to_complete(call, &fc->ac);
}
