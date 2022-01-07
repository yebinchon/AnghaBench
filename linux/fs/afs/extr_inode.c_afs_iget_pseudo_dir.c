
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {struct afs_super_info* s_fs_info; } ;
struct inode {int i_state; int i_mode; int i_flags; scalar_t__ i_generation; scalar_t__ i_blocks; int i_mtime; int i_atime; int i_ctime; int i_gid; int i_uid; int * i_op; int * i_fop; scalar_t__ i_size; int i_ino; } ;
struct afs_vnode {int flags; } ;
struct afs_super_info {TYPE_1__* volume; } ;
struct TYPE_4__ {int vnode; int unique; int vid; } ;
struct afs_iget_data {TYPE_2__ fid; TYPE_1__* volume; int cb_s_break; int cb_v_break; } ;
typedef int atomic_t ;
struct TYPE_3__ {int vid; } ;


 struct afs_vnode* AFS_FS_I (struct inode*) ;
 int AFS_VNODE_MOUNTPOINT ;
 int AFS_VNODE_PSEUDODIR ;
 int BUG_ON (int) ;
 int ENOMEM ;
 struct inode* ERR_PTR (int ) ;
 int GLOBAL_ROOT_GID ;
 int GLOBAL_ROOT_UID ;
 int I_NEW ;
 int S_AUTOMOUNT ;
 int S_IFDIR ;
 int S_IRUGO ;
 int S_IXUGO ;
 int S_NOATIME ;
 int _debug (char*,struct inode*,int ,int ,int,int) ;
 int _enter (char*) ;
 int _leave (char*,...) ;
 int afs_autocell_inode_operations ;
 int afs_dynroot_inode_operations ;
 int afs_iget5_pseudo_dir_test ;
 int afs_iget5_set ;
 int atomic_inc_return (int *) ;
 int current_time (struct inode*) ;
 struct inode* iget5_locked (struct super_block*,int,int ,int ,struct afs_iget_data*) ;
 int inode_set_iversion_raw (struct inode*,int ) ;
 int set_bit (int ,int *) ;
 int set_nlink (struct inode*,int) ;
 int simple_dir_operations ;
 int unlock_new_inode (struct inode*) ;

struct inode *afs_iget_pseudo_dir(struct super_block *sb, bool root)
{
 struct afs_super_info *as;
 struct afs_vnode *vnode;
 struct inode *inode;
 static atomic_t afs_autocell_ino;

 struct afs_iget_data iget_data = {
  .cb_v_break = 0,
  .cb_s_break = 0,
 };

 _enter("");

 as = sb->s_fs_info;
 if (as->volume) {
  iget_data.volume = as->volume;
  iget_data.fid.vid = as->volume->vid;
 }
 if (root) {
  iget_data.fid.vnode = 1;
  iget_data.fid.unique = 1;
 } else {
  iget_data.fid.vnode = atomic_inc_return(&afs_autocell_ino);
  iget_data.fid.unique = 0;
 }

 inode = iget5_locked(sb, iget_data.fid.vnode,
        afs_iget5_pseudo_dir_test, afs_iget5_set,
        &iget_data);
 if (!inode) {
  _leave(" = -ENOMEM");
  return ERR_PTR(-ENOMEM);
 }

 _debug("GOT INODE %p { ino=%lu, vl=%llx, vn=%llx, u=%x }",
        inode, inode->i_ino, iget_data.fid.vid, iget_data.fid.vnode,
        iget_data.fid.unique);

 vnode = AFS_FS_I(inode);


 BUG_ON(!(inode->i_state & I_NEW));

 inode->i_size = 0;
 inode->i_mode = S_IFDIR | S_IRUGO | S_IXUGO;
 if (root) {
  inode->i_op = &afs_dynroot_inode_operations;
  inode->i_fop = &simple_dir_operations;
 } else {
  inode->i_op = &afs_autocell_inode_operations;
 }
 set_nlink(inode, 2);
 inode->i_uid = GLOBAL_ROOT_UID;
 inode->i_gid = GLOBAL_ROOT_GID;
 inode->i_ctime = inode->i_atime = inode->i_mtime = current_time(inode);
 inode->i_blocks = 0;
 inode_set_iversion_raw(inode, 0);
 inode->i_generation = 0;

 set_bit(AFS_VNODE_PSEUDODIR, &vnode->flags);
 if (!root) {
  set_bit(AFS_VNODE_MOUNTPOINT, &vnode->flags);
  inode->i_flags |= S_AUTOMOUNT;
 }

 inode->i_flags |= S_NOATIME;
 unlock_new_inode(inode);
 _leave(" = %p", inode);
 return inode;
}
