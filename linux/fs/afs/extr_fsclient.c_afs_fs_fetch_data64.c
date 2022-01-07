
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int unique; int vnode; int vid; } ;
struct afs_vnode {TYPE_1__ fid; } ;
struct afs_status_cb {int dummy; } ;
struct afs_read {int usage; int len; int pos; } ;
struct afs_net {int dummy; } ;
struct afs_fs_cursor {int ac; int cbi; int key; struct afs_vnode* vnode; } ;
struct afs_call {scalar_t__* request; struct afs_read* read_request; int * out_volsync; struct afs_status_cb* out_scb; int key; } ;
typedef scalar_t__ __be32 ;


 int ENOMEM ;
 int FSFETCHDATA64 ;
 int GFP_NOFS ;
 int _enter (char*) ;
 int afs_RXFSFetchData64 ;
 struct afs_call* afs_alloc_flat_call (struct afs_net*,int *,int,int) ;
 int afs_make_call (int *,struct afs_call*,int ) ;
 int afs_set_fc_call (struct afs_call*,struct afs_fs_cursor*) ;
 int afs_use_fs_server (struct afs_call*,int ) ;
 struct afs_net* afs_v2net (struct afs_vnode*) ;
 int afs_wait_for_call_to_complete (struct afs_call*,int *) ;
 scalar_t__ htonl (int ) ;
 int lower_32_bits (int ) ;
 int refcount_inc (int *) ;
 int trace_afs_make_fs_call (struct afs_call*,TYPE_1__*) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static int afs_fs_fetch_data64(struct afs_fs_cursor *fc,
          struct afs_status_cb *scb,
          struct afs_read *req)
{
 struct afs_vnode *vnode = fc->vnode;
 struct afs_call *call;
 struct afs_net *net = afs_v2net(vnode);
 __be32 *bp;

 _enter("");

 call = afs_alloc_flat_call(net, &afs_RXFSFetchData64, 32, (21 + 3 + 6) * 4);
 if (!call)
  return -ENOMEM;

 call->key = fc->key;
 call->out_scb = scb;
 call->out_volsync = ((void*)0);
 call->read_request = req;


 bp = call->request;
 bp[0] = htonl(FSFETCHDATA64);
 bp[1] = htonl(vnode->fid.vid);
 bp[2] = htonl(vnode->fid.vnode);
 bp[3] = htonl(vnode->fid.unique);
 bp[4] = htonl(upper_32_bits(req->pos));
 bp[5] = htonl(lower_32_bits(req->pos));
 bp[6] = 0;
 bp[7] = htonl(lower_32_bits(req->len));

 refcount_inc(&req->usage);
 afs_use_fs_server(call, fc->cbi);
 trace_afs_make_fs_call(call, &vnode->fid);
 afs_set_fc_call(call, fc);
 afs_make_call(&fc->ac, call, GFP_NOFS);
 return afs_wait_for_call_to_complete(call, &fc->ac);
}
