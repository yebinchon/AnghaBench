
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int i_mode; int * i_fop; int * i_op; int i_flags; int i_ctime; int i_mtime; int i_atime; int i_ino; } ;
typedef int dev_t ;



 int S_IFMT ;

 int S_IMMUTABLE ;
 int current_time (struct inode*) ;
 int efivarfs_dir_inode_operations ;
 int efivarfs_file_operations ;
 int get_next_ino () ;
 int inc_nlink (struct inode*) ;
 struct inode* new_inode (struct super_block*) ;
 int simple_dir_operations ;

struct inode *efivarfs_get_inode(struct super_block *sb,
    const struct inode *dir, int mode,
    dev_t dev, bool is_removable)
{
 struct inode *inode = new_inode(sb);

 if (inode) {
  inode->i_ino = get_next_ino();
  inode->i_mode = mode;
  inode->i_atime = inode->i_mtime = inode->i_ctime = current_time(inode);
  inode->i_flags = is_removable ? 0 : S_IMMUTABLE;
  switch (mode & S_IFMT) {
  case 128:
   inode->i_fop = &efivarfs_file_operations;
   break;
  case 129:
   inode->i_op = &efivarfs_dir_inode_operations;
   inode->i_fop = &simple_dir_operations;
   inc_nlink(inode);
   break;
  }
 }
 return inode;
}
