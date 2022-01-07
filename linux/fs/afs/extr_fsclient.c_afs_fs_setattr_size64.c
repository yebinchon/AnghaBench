
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct iattr {int ia_valid; int ia_size; } ;
struct TYPE_2__ {int vid; int vnode; int unique; } ;
struct afs_vnode {TYPE_1__ fid; } ;
struct afs_status_cb {int dummy; } ;
struct afs_net {int dummy; } ;
struct afs_fs_cursor {int ac; int cbi; int key; struct afs_vnode* vnode; } ;
struct afs_call {int * request; struct afs_status_cb* out_scb; int key; } ;
typedef int __be32 ;


 int ASSERT (int) ;
 int ATTR_SIZE ;
 int ENOMEM ;
 int FSSTOREDATA64 ;
 int GFP_NOFS ;
 int _enter (char*,int ,int,int) ;
 int afs_RXFSStoreData64_as_Status ;
 struct afs_call* afs_alloc_flat_call (struct afs_net*,int *,int,int) ;
 int afs_make_call (int *,struct afs_call*,int ) ;
 int afs_set_fc_call (struct afs_call*,struct afs_fs_cursor*) ;
 int afs_use_fs_server (struct afs_call*,int ) ;
 struct afs_net* afs_v2net (struct afs_vnode*) ;
 int afs_wait_for_call_to_complete (struct afs_call*,int *) ;
 void* htonl (int) ;
 int key_serial (int ) ;
 int trace_afs_make_fs_call (struct afs_call*,TYPE_1__*) ;
 int xdr_encode_AFS_StoreStatus (int **,struct iattr*) ;

__attribute__((used)) static int afs_fs_setattr_size64(struct afs_fs_cursor *fc, struct iattr *attr,
     struct afs_status_cb *scb)
{
 struct afs_vnode *vnode = fc->vnode;
 struct afs_call *call;
 struct afs_net *net = afs_v2net(vnode);
 __be32 *bp;

 _enter(",%x,{%llx:%llu},,",
        key_serial(fc->key), vnode->fid.vid, vnode->fid.vnode);

 ASSERT(attr->ia_valid & ATTR_SIZE);

 call = afs_alloc_flat_call(net, &afs_RXFSStoreData64_as_Status,
       (4 + 6 + 3 * 2) * 4,
       (21 + 6) * 4);
 if (!call)
  return -ENOMEM;

 call->key = fc->key;
 call->out_scb = scb;


 bp = call->request;
 *bp++ = htonl(FSSTOREDATA64);
 *bp++ = htonl(vnode->fid.vid);
 *bp++ = htonl(vnode->fid.vnode);
 *bp++ = htonl(vnode->fid.unique);

 xdr_encode_AFS_StoreStatus(&bp, attr);

 *bp++ = htonl(attr->ia_size >> 32);
 *bp++ = htonl((u32) attr->ia_size);
 *bp++ = 0;
 *bp++ = 0;
 *bp++ = htonl(attr->ia_size >> 32);
 *bp++ = htonl((u32) attr->ia_size);

 afs_use_fs_server(call, fc->cbi);
 trace_afs_make_fs_call(call, &vnode->fid);
 afs_set_fc_call(call, fc);
 afs_make_call(&fc->ac, call, GFP_NOFS);
 return afs_wait_for_call_to_complete(call, &fc->ac);
}
