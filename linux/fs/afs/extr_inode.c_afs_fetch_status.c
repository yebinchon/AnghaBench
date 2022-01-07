
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct key {int dummy; } ;
struct TYPE_7__ {int data_version; } ;
struct TYPE_6__ {int unique; int vnode; int vid; } ;
struct afs_vnode {TYPE_3__ status; int flags; TYPE_2__ fid; TYPE_1__* volume; } ;
struct TYPE_8__ {int caller_access; } ;
struct afs_status_cb {TYPE_4__ status; } ;
struct afs_fs_cursor {int error; int cb_break; int cbi; } ;
typedef int afs_dataversion_t ;
typedef int afs_access_t ;
struct TYPE_5__ {int name; } ;


 int ENOMEM ;
 int ERESTARTSYS ;
 int GFP_KERNEL ;
 int _enter (char*,int ,int ,int ,int ,int ) ;
 int _leave (char*,int) ;
 scalar_t__ afs_begin_vnode_operation (struct afs_fs_cursor*,struct afs_vnode*,struct key*,int) ;
 int afs_cache_permit (struct afs_vnode*,struct key*,int ,struct afs_status_cb*) ;
 int afs_calc_vnode_cb_break (struct afs_vnode*) ;
 int afs_check_for_remote_deletion (struct afs_fs_cursor*,struct afs_vnode*) ;
 int afs_end_vnode_operation (struct afs_fs_cursor*) ;
 int afs_fs_fetch_file_status (struct afs_fs_cursor*,struct afs_status_cb*,int *) ;
 int afs_inode_init_from_status (struct afs_vnode*,struct key*,int ,int *,struct afs_status_cb*) ;
 scalar_t__ afs_select_fileserver (struct afs_fs_cursor*) ;
 int afs_vnode_commit_status (struct afs_fs_cursor*,struct afs_vnode*,int ,int *,struct afs_status_cb*) ;
 int kfree (struct afs_status_cb*) ;
 struct afs_status_cb* kzalloc (int,int ) ;

int afs_fetch_status(struct afs_vnode *vnode, struct key *key, bool is_new,
       afs_access_t *_caller_access)
{
 struct afs_status_cb *scb;
 struct afs_fs_cursor fc;
 int ret;

 _enter("%s,{%llx:%llu.%u,S=%lx}",
        vnode->volume->name,
        vnode->fid.vid, vnode->fid.vnode, vnode->fid.unique,
        vnode->flags);

 scb = kzalloc(sizeof(struct afs_status_cb), GFP_KERNEL);
 if (!scb)
  return -ENOMEM;

 ret = -ERESTARTSYS;
 if (afs_begin_vnode_operation(&fc, vnode, key, 1)) {
  afs_dataversion_t data_version = vnode->status.data_version;

  while (afs_select_fileserver(&fc)) {
   fc.cb_break = afs_calc_vnode_cb_break(vnode);
   afs_fs_fetch_file_status(&fc, scb, ((void*)0));
  }

  if (fc.error) {

  } else if (is_new) {
   ret = afs_inode_init_from_status(vnode, key, fc.cbi,
        ((void*)0), scb);
   fc.error = ret;
   if (ret == 0)
    afs_cache_permit(vnode, key, fc.cb_break, scb);
  } else {
   afs_vnode_commit_status(&fc, vnode, fc.cb_break,
      &data_version, scb);
  }
  afs_check_for_remote_deletion(&fc, vnode);
  ret = afs_end_vnode_operation(&fc);
 }

 if (ret == 0 && _caller_access)
  *_caller_access = scb->status.caller_access;
 kfree(scb);
 _leave(" = %d", ret);
 return ret;
}
