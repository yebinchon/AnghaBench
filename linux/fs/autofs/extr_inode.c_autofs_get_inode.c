
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct super_block {scalar_t__ s_root; } ;
struct inode {int * i_op; int * i_fop; int i_ino; int i_ctime; int i_mtime; int i_atime; int i_gid; int i_uid; int i_mode; } ;
struct TYPE_2__ {int i_gid; int i_uid; } ;


 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 int WARN_ON (int) ;
 int autofs_dir_inode_operations ;
 int autofs_dir_operations ;
 int autofs_symlink_inode_operations ;
 int current_time (struct inode*) ;
 TYPE_1__* d_inode (scalar_t__) ;
 int get_next_ino () ;
 struct inode* new_inode (struct super_block*) ;
 int set_nlink (struct inode*,int) ;

struct inode *autofs_get_inode(struct super_block *sb, umode_t mode)
{
 struct inode *inode = new_inode(sb);

 if (inode == ((void*)0))
  return ((void*)0);

 inode->i_mode = mode;
 if (sb->s_root) {
  inode->i_uid = d_inode(sb->s_root)->i_uid;
  inode->i_gid = d_inode(sb->s_root)->i_gid;
 }
 inode->i_atime = inode->i_mtime = inode->i_ctime = current_time(inode);
 inode->i_ino = get_next_ino();

 if (S_ISDIR(mode)) {
  set_nlink(inode, 2);
  inode->i_op = &autofs_dir_inode_operations;
  inode->i_fop = &autofs_dir_operations;
 } else if (S_ISLNK(mode)) {
  inode->i_op = &autofs_symlink_inode_operations;
 } else
  WARN_ON(1);

 return inode;
}
