
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xattr_handler {int dummy; } ;
struct key {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_4__ {int data_version; } ;
struct afs_vnode {TYPE_2__ status; TYPE_1__* volume; } ;
struct afs_status_cb {int size; int data; } ;
struct afs_fs_cursor {int cb_break; int vnode; } ;
struct afs_acl {int size; int data; } ;
typedef int afs_dataversion_t ;
struct TYPE_3__ {int cell; } ;


 struct afs_vnode* AFS_FS_I (struct inode*) ;
 int ENOMEM ;
 int ERANGE ;
 int ERESTARTSYS ;
 int GFP_NOFS ;
 scalar_t__ IS_ERR (struct key*) ;
 int PTR_ERR (struct key*) ;
 scalar_t__ afs_begin_vnode_operation (struct afs_fs_cursor*,struct afs_vnode*,struct key*,int) ;
 int afs_calc_vnode_cb_break (struct afs_vnode*) ;
 int afs_check_for_remote_deletion (struct afs_fs_cursor*,int ) ;
 int afs_end_vnode_operation (struct afs_fs_cursor*) ;
 struct afs_status_cb* afs_fs_fetch_acl (struct afs_fs_cursor*,struct afs_status_cb*) ;
 struct key* afs_request_key (int ) ;
 scalar_t__ afs_select_fileserver (struct afs_fs_cursor*) ;
 int afs_vnode_commit_status (struct afs_fs_cursor*,struct afs_vnode*,int ,int *,struct afs_status_cb*) ;
 int key_put (struct key*) ;
 int kfree (struct afs_status_cb*) ;
 struct afs_status_cb* kzalloc (int,int ) ;
 int memcpy (void*,int ,size_t) ;

__attribute__((used)) static int afs_xattr_get_acl(const struct xattr_handler *handler,
        struct dentry *dentry,
        struct inode *inode, const char *name,
        void *buffer, size_t size)
{
 struct afs_fs_cursor fc;
 struct afs_status_cb *scb;
 struct afs_vnode *vnode = AFS_FS_I(inode);
 struct afs_acl *acl = ((void*)0);
 struct key *key;
 int ret = -ENOMEM;

 scb = kzalloc(sizeof(struct afs_status_cb), GFP_NOFS);
 if (!scb)
  goto error;

 key = afs_request_key(vnode->volume->cell);
 if (IS_ERR(key)) {
  ret = PTR_ERR(key);
  goto error_scb;
 }

 ret = -ERESTARTSYS;
 if (afs_begin_vnode_operation(&fc, vnode, key, 1)) {
  afs_dataversion_t data_version = vnode->status.data_version;

  while (afs_select_fileserver(&fc)) {
   fc.cb_break = afs_calc_vnode_cb_break(vnode);
   acl = afs_fs_fetch_acl(&fc, scb);
  }

  afs_check_for_remote_deletion(&fc, fc.vnode);
  afs_vnode_commit_status(&fc, vnode, fc.cb_break,
     &data_version, scb);
  ret = afs_end_vnode_operation(&fc);
 }

 if (ret == 0) {
  ret = acl->size;
  if (size > 0) {
   if (acl->size <= size)
    memcpy(buffer, acl->data, acl->size);
   else
    ret = -ERANGE;
  }
  kfree(acl);
 }

 key_put(key);
error_scb:
 kfree(scb);
error:
 return ret;
}
