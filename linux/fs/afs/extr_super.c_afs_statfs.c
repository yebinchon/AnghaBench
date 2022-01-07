
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kstatfs {int f_blocks; int f_bavail; int f_bfree; scalar_t__ f_namelen; int f_bsize; int f_type; } ;
struct key {int dummy; } ;
struct dentry {TYPE_2__* d_sb; } ;
struct afs_volume_status {scalar_t__ max_quota; int part_max_blocks; int blocks_in_use; } ;
struct afs_vnode {TYPE_1__* volume; } ;
struct afs_super_info {scalar_t__ dyn_root; } ;
struct afs_fs_cursor {int vnode; int cb_break; int flags; } ;
struct TYPE_4__ {int s_magic; } ;
struct TYPE_3__ {int cell; } ;


 scalar_t__ AFSNAMEMAX ;
 int AFS_BLOCK_SIZE ;
 int AFS_FS_CURSOR_NO_VSLEEP ;
 struct afs_vnode* AFS_FS_I (int ) ;
 struct afs_super_info* AFS_FS_S (TYPE_2__*) ;
 int ERESTARTSYS ;
 scalar_t__ IS_ERR (struct key*) ;
 int PTR_ERR (struct key*) ;
 scalar_t__ afs_begin_vnode_operation (struct afs_fs_cursor*,struct afs_vnode*,struct key*,int) ;
 int afs_calc_vnode_cb_break (struct afs_vnode*) ;
 int afs_check_for_remote_deletion (struct afs_fs_cursor*,int ) ;
 int afs_end_vnode_operation (struct afs_fs_cursor*) ;
 int afs_fs_get_volume_status (struct afs_fs_cursor*,struct afs_volume_status*) ;
 struct key* afs_request_key (int ) ;
 scalar_t__ afs_select_fileserver (struct afs_fs_cursor*) ;
 int d_inode (struct dentry*) ;
 int key_put (struct key*) ;

__attribute__((used)) static int afs_statfs(struct dentry *dentry, struct kstatfs *buf)
{
 struct afs_super_info *as = AFS_FS_S(dentry->d_sb);
 struct afs_fs_cursor fc;
 struct afs_volume_status vs;
 struct afs_vnode *vnode = AFS_FS_I(d_inode(dentry));
 struct key *key;
 int ret;

 buf->f_type = dentry->d_sb->s_magic;
 buf->f_bsize = AFS_BLOCK_SIZE;
 buf->f_namelen = AFSNAMEMAX - 1;

 if (as->dyn_root) {
  buf->f_blocks = 1;
  buf->f_bavail = 0;
  buf->f_bfree = 0;
  return 0;
 }

 key = afs_request_key(vnode->volume->cell);
 if (IS_ERR(key))
  return PTR_ERR(key);

 ret = -ERESTARTSYS;
 if (afs_begin_vnode_operation(&fc, vnode, key, 1)) {
  fc.flags |= AFS_FS_CURSOR_NO_VSLEEP;
  while (afs_select_fileserver(&fc)) {
   fc.cb_break = afs_calc_vnode_cb_break(vnode);
   afs_fs_get_volume_status(&fc, &vs);
  }

  afs_check_for_remote_deletion(&fc, fc.vnode);
  ret = afs_end_vnode_operation(&fc);
 }

 key_put(key);

 if (ret == 0) {
  if (vs.max_quota == 0)
   buf->f_blocks = vs.part_max_blocks;
  else
   buf->f_blocks = vs.max_quota;
  buf->f_bavail = buf->f_bfree = buf->f_blocks - vs.blocks_in_use;
 }

 return ret;
}
