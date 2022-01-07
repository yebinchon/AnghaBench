
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int unique; int vnode; int vid; } ;
struct afs_vnode {TYPE_1__ fid; } ;
struct afs_status_cb {int dummy; } ;
struct afs_net {int dummy; } ;
struct TYPE_5__ {int error; } ;
struct afs_fs_cursor {TYPE_2__ ac; int cbi; int key; struct afs_vnode* vnode; } ;
struct afs_call {int * request; int * out_volsync; struct afs_status_cb* out_scb; int * ret_acl; int key; } ;
struct afs_acl {int dummy; } ;
typedef int __be32 ;


 int ENOMEM ;
 struct afs_acl* ERR_PTR (int ) ;
 int FSFETCHACL ;
 int GFP_KERNEL ;
 int _enter (char*,int ,int ,int ) ;
 int afs_RXFSFetchACL ;
 struct afs_call* afs_alloc_flat_call (struct afs_net*,int *,int,int) ;
 int afs_make_call (TYPE_2__*,struct afs_call*,int ) ;
 int afs_use_fs_server (struct afs_call*,int ) ;
 struct afs_net* afs_v2net (struct afs_vnode*) ;
 scalar_t__ afs_wait_for_call_to_complete (struct afs_call*,TYPE_2__*) ;
 int htonl (int ) ;
 int key_serial (int ) ;
 int trace_afs_make_fs_call (struct afs_call*,TYPE_1__*) ;

struct afs_acl *afs_fs_fetch_acl(struct afs_fs_cursor *fc,
     struct afs_status_cb *scb)
{
 struct afs_vnode *vnode = fc->vnode;
 struct afs_call *call;
 struct afs_net *net = afs_v2net(vnode);
 __be32 *bp;

 _enter(",%x,{%llx:%llu},,",
        key_serial(fc->key), vnode->fid.vid, vnode->fid.vnode);

 call = afs_alloc_flat_call(net, &afs_RXFSFetchACL, 16, (21 + 6) * 4);
 if (!call) {
  fc->ac.error = -ENOMEM;
  return ERR_PTR(-ENOMEM);
 }

 call->key = fc->key;
 call->ret_acl = ((void*)0);
 call->out_scb = scb;
 call->out_volsync = ((void*)0);


 bp = call->request;
 bp[0] = htonl(FSFETCHACL);
 bp[1] = htonl(vnode->fid.vid);
 bp[2] = htonl(vnode->fid.vnode);
 bp[3] = htonl(vnode->fid.unique);

 afs_use_fs_server(call, fc->cbi);
 trace_afs_make_fs_call(call, &vnode->fid);
 afs_make_call(&fc->ac, call, GFP_KERNEL);
 return (struct afs_acl *)afs_wait_for_call_to_complete(call, &fc->ac);
}
