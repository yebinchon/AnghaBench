
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct yfs_xdr_YFSFid {int dummy; } ;
struct yfs_xdr_YFSFetchStatus {int dummy; } ;
struct afs_volsync {int dummy; } ;
struct afs_status_cb {int dummy; } ;
struct afs_net {int dummy; } ;
struct TYPE_3__ {int error; } ;
struct afs_fs_cursor {TYPE_1__ ac; int cbi; int key; } ;
struct afs_fid {int vnode; int vid; } ;
struct afs_call {unsigned int count2; int * request; struct afs_volsync* out_volsync; struct afs_status_cb* out_scb; int key; } ;
typedef int __be32 ;


 int ENOMEM ;
 int GFP_NOFS ;
 unsigned int YFSINLINEBULKSTATUS ;
 int _enter (char*,int ,int ,int ,unsigned int) ;
 struct afs_call* afs_alloc_flat_call (struct afs_net*,int *,int,int) ;
 int afs_make_call (TYPE_1__*,struct afs_call*,int ) ;
 int afs_set_fc_call (struct afs_call*,struct afs_fs_cursor*) ;
 int afs_use_fs_server (struct afs_call*,int ) ;
 int afs_wait_for_call_to_complete (struct afs_call*,TYPE_1__*) ;
 int key_serial (int ) ;
 int trace_afs_make_fs_call (struct afs_call*,struct afs_fid*) ;
 int * xdr_encode_YFSFid (int *,struct afs_fid*) ;
 int * xdr_encode_u32 (int *,unsigned int) ;
 int yfs_RXYFSInlineBulkStatus ;
 int yfs_check_req (struct afs_call*,int *) ;

int yfs_fs_inline_bulk_status(struct afs_fs_cursor *fc,
         struct afs_net *net,
         struct afs_fid *fids,
         struct afs_status_cb *statuses,
         unsigned int nr_fids,
         struct afs_volsync *volsync)
{
 struct afs_call *call;
 __be32 *bp;
 int i;

 _enter(",%x,{%llx:%llu},%u",
        key_serial(fc->key), fids[0].vid, fids[1].vnode, nr_fids);

 call = afs_alloc_flat_call(net, &yfs_RXYFSInlineBulkStatus,
       sizeof(__be32) +
       sizeof(__be32) +
       sizeof(__be32) +
       sizeof(struct yfs_xdr_YFSFid) * nr_fids,
       sizeof(struct yfs_xdr_YFSFetchStatus));
 if (!call) {
  fc->ac.error = -ENOMEM;
  return -ENOMEM;
 }

 call->key = fc->key;
 call->out_scb = statuses;
 call->out_volsync = volsync;
 call->count2 = nr_fids;


 bp = call->request;
 bp = xdr_encode_u32(bp, YFSINLINEBULKSTATUS);
 bp = xdr_encode_u32(bp, 0);
 bp = xdr_encode_u32(bp, nr_fids);
 for (i = 0; i < nr_fids; i++)
  bp = xdr_encode_YFSFid(bp, &fids[i]);
 yfs_check_req(call, bp);

 afs_use_fs_server(call, fc->cbi);
 trace_afs_make_fs_call(call, &fids[0]);
 afs_set_fc_call(call, fc);
 afs_make_call(&fc->ac, call, GFP_NOFS);
 return afs_wait_for_call_to_complete(call, &fc->ac);
}
