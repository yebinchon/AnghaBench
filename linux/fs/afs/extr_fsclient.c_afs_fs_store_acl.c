
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t vid; size_t vnode; size_t unique; } ;
struct afs_vnode {TYPE_1__ fid; } ;
struct afs_status_cb {int dummy; } ;
struct afs_net {int dummy; } ;
struct TYPE_5__ {int error; } ;
struct afs_fs_cursor {TYPE_2__ ac; int key; struct afs_vnode* vnode; } ;
struct afs_call {int * request; int * out_volsync; struct afs_status_cb* out_scb; int key; } ;
struct afs_acl {size_t size; int data; } ;
typedef int __be32 ;


 int ENOMEM ;
 size_t FSSTOREACL ;
 int GFP_KERNEL ;
 int _enter (char*,int ,size_t,size_t) ;
 int afs_RXFSStoreACL ;
 struct afs_call* afs_alloc_flat_call (struct afs_net*,int *,int,int) ;
 int afs_make_call (TYPE_2__*,struct afs_call*,int ) ;
 struct afs_net* afs_v2net (struct afs_vnode*) ;
 int afs_wait_for_call_to_complete (struct afs_call*,TYPE_2__*) ;
 int htonl (size_t) ;
 int key_serial (int ) ;
 int memcpy (int *,int ,size_t) ;
 int memset (void*,int ,size_t) ;
 size_t round_up (size_t,int) ;
 int trace_afs_make_fs_call (struct afs_call*,TYPE_1__*) ;

int afs_fs_store_acl(struct afs_fs_cursor *fc, const struct afs_acl *acl,
       struct afs_status_cb *scb)
{
 struct afs_vnode *vnode = fc->vnode;
 struct afs_call *call;
 struct afs_net *net = afs_v2net(vnode);
 size_t size;
 __be32 *bp;

 _enter(",%x,{%llx:%llu},,",
        key_serial(fc->key), vnode->fid.vid, vnode->fid.vnode);

 size = round_up(acl->size, 4);
 call = afs_alloc_flat_call(net, &afs_RXFSStoreACL,
       5 * 4 + size, (21 + 6) * 4);
 if (!call) {
  fc->ac.error = -ENOMEM;
  return -ENOMEM;
 }

 call->key = fc->key;
 call->out_scb = scb;
 call->out_volsync = ((void*)0);


 bp = call->request;
 bp[0] = htonl(FSSTOREACL);
 bp[1] = htonl(vnode->fid.vid);
 bp[2] = htonl(vnode->fid.vnode);
 bp[3] = htonl(vnode->fid.unique);
 bp[4] = htonl(acl->size);
 memcpy(&bp[5], acl->data, acl->size);
 if (acl->size != size)
  memset((void *)&bp[5] + acl->size, 0, size - acl->size);

 trace_afs_make_fs_call(call, &vnode->fid);
 afs_make_call(&fc->ac, call, GFP_KERNEL);
 return afs_wait_for_call_to_complete(call, &fc->ac);
}
