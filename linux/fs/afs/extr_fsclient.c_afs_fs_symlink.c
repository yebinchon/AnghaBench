
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {size_t vid; size_t vnode; size_t unique; } ;
struct TYPE_7__ {size_t tv_sec; } ;
struct TYPE_8__ {TYPE_2__ i_mtime; } ;
struct afs_vnode {TYPE_4__ fid; TYPE_3__ vfs_inode; } ;
struct afs_status_cb {int dummy; } ;
struct afs_net {int dummy; } ;
struct afs_fs_cursor {int ac; TYPE_5__* cbi; int key; struct afs_vnode* vnode; } ;
struct afs_fid {int dummy; } ;
struct afs_call {int * request; struct afs_status_cb* out_scb; struct afs_fid* out_fid; struct afs_status_cb* out_dir_scb; int key; } ;
typedef int __be32 ;
struct TYPE_10__ {TYPE_1__* server; } ;
struct TYPE_6__ {int flags; } ;


 int AFS_SERVER_FL_IS_YFS ;
 size_t AFS_SET_MODE ;
 size_t AFS_SET_MTIME ;
 int ENOMEM ;
 size_t FSSYMLINK ;
 int GFP_NOFS ;
 size_t S_IRWXUGO ;
 int _enter (char*) ;
 int afs_RXFSSymlink ;
 struct afs_call* afs_alloc_flat_call (struct afs_net*,int *,size_t,int) ;
 int afs_make_call (int *,struct afs_call*,int ) ;
 int afs_set_fc_call (struct afs_call*,struct afs_fs_cursor*) ;
 int afs_use_fs_server (struct afs_call*,TYPE_5__*) ;
 struct afs_net* afs_v2net (struct afs_vnode*) ;
 int afs_wait_for_call_to_complete (struct afs_call*,int *) ;
 void* htonl (size_t) ;
 int memcpy (int *,char const*,size_t) ;
 int memset (int *,int ,size_t) ;
 size_t strlen (char const*) ;
 scalar_t__ test_bit (int ,int *) ;
 int trace_afs_make_fs_call1 (struct afs_call*,TYPE_4__*,char const*) ;
 int yfs_fs_symlink (struct afs_fs_cursor*,char const*,char const*,struct afs_status_cb*,struct afs_fid*,struct afs_status_cb*) ;

int afs_fs_symlink(struct afs_fs_cursor *fc,
     const char *name,
     const char *contents,
     struct afs_status_cb *dvnode_scb,
     struct afs_fid *newfid,
     struct afs_status_cb *new_scb)
{
 struct afs_vnode *dvnode = fc->vnode;
 struct afs_call *call;
 struct afs_net *net = afs_v2net(dvnode);
 size_t namesz, reqsz, padsz, c_namesz, c_padsz;
 __be32 *bp;

 if (test_bit(AFS_SERVER_FL_IS_YFS, &fc->cbi->server->flags))
  return yfs_fs_symlink(fc, name, contents, dvnode_scb,
          newfid, new_scb);

 _enter("");

 namesz = strlen(name);
 padsz = (4 - (namesz & 3)) & 3;

 c_namesz = strlen(contents);
 c_padsz = (4 - (c_namesz & 3)) & 3;

 reqsz = (6 * 4) + namesz + padsz + c_namesz + c_padsz + (6 * 4);

 call = afs_alloc_flat_call(net, &afs_RXFSSymlink, reqsz,
       (3 + 21 + 21 + 6) * 4);
 if (!call)
  return -ENOMEM;

 call->key = fc->key;
 call->out_dir_scb = dvnode_scb;
 call->out_fid = newfid;
 call->out_scb = new_scb;


 bp = call->request;
 *bp++ = htonl(FSSYMLINK);
 *bp++ = htonl(dvnode->fid.vid);
 *bp++ = htonl(dvnode->fid.vnode);
 *bp++ = htonl(dvnode->fid.unique);
 *bp++ = htonl(namesz);
 memcpy(bp, name, namesz);
 bp = (void *) bp + namesz;
 if (padsz > 0) {
  memset(bp, 0, padsz);
  bp = (void *) bp + padsz;
 }
 *bp++ = htonl(c_namesz);
 memcpy(bp, contents, c_namesz);
 bp = (void *) bp + c_namesz;
 if (c_padsz > 0) {
  memset(bp, 0, c_padsz);
  bp = (void *) bp + c_padsz;
 }
 *bp++ = htonl(AFS_SET_MODE | AFS_SET_MTIME);
 *bp++ = htonl(dvnode->vfs_inode.i_mtime.tv_sec);
 *bp++ = 0;
 *bp++ = 0;
 *bp++ = htonl(S_IRWXUGO);
 *bp++ = 0;

 afs_use_fs_server(call, fc->cbi);
 trace_afs_make_fs_call1(call, &dvnode->fid, name);
 afs_set_fc_call(call, fc);
 afs_make_call(&fc->ac, call, GFP_NOFS);
 return afs_wait_for_call_to_complete(call, &fc->ac);
}
