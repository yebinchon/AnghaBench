
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct key {int dummy; } ;
struct TYPE_4__ {int unique; int vnode; int vid; } ;
struct afs_vnode {TYPE_2__ fid; TYPE_1__* volume; } ;
struct afs_status_cb {int dummy; } ;
struct afs_fs_cursor {int cb_break; } ;
struct TYPE_3__ {int name; } ;


 int ENOMEM ;
 int ERESTARTSYS ;
 int GFP_KERNEL ;
 int _enter (char*,int ,int ,int ,int ,int ) ;
 int _leave (char*,int) ;
 scalar_t__ afs_begin_vnode_operation (struct afs_fs_cursor*,struct afs_vnode*,struct key*,int) ;
 int afs_calc_vnode_cb_break (struct afs_vnode*) ;
 int afs_check_for_remote_deletion (struct afs_fs_cursor*,struct afs_vnode*) ;
 int afs_end_vnode_operation (struct afs_fs_cursor*) ;
 int afs_fs_release_lock (struct afs_fs_cursor*,struct afs_status_cb*) ;
 scalar_t__ afs_select_current_fileserver (struct afs_fs_cursor*) ;
 int afs_vnode_commit_status (struct afs_fs_cursor*,struct afs_vnode*,int ,int *,struct afs_status_cb*) ;
 int key_serial (struct key*) ;
 int kfree (struct afs_status_cb*) ;
 struct afs_status_cb* kzalloc (int,int ) ;

__attribute__((used)) static int afs_release_lock(struct afs_vnode *vnode, struct key *key)
{
 struct afs_status_cb *scb;
 struct afs_fs_cursor fc;
 int ret;

 _enter("%s{%llx:%llu.%u},%x",
        vnode->volume->name,
        vnode->fid.vid,
        vnode->fid.vnode,
        vnode->fid.unique,
        key_serial(key));

 scb = kzalloc(sizeof(struct afs_status_cb), GFP_KERNEL);
 if (!scb)
  return -ENOMEM;

 ret = -ERESTARTSYS;
 if (afs_begin_vnode_operation(&fc, vnode, key, 0)) {
  while (afs_select_current_fileserver(&fc)) {
   fc.cb_break = afs_calc_vnode_cb_break(vnode);
   afs_fs_release_lock(&fc, scb);
  }

  afs_check_for_remote_deletion(&fc, vnode);
  afs_vnode_commit_status(&fc, vnode, fc.cb_break, ((void*)0), scb);
  ret = afs_end_vnode_operation(&fc);
 }

 kfree(scb);
 _leave(" = %d", ret);
 return ret;
}
