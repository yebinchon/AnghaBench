
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int * i_fop; int i_rdev; int i_mode; int * i_op; TYPE_1__* i_mapping; int i_ino; } ;
struct TYPE_2__ {int * a_ops; } ;


 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 int ecryptfs_aops ;
 int ecryptfs_dir_fops ;
 int ecryptfs_dir_iops ;
 int ecryptfs_main_fops ;
 int ecryptfs_main_iops ;
 int ecryptfs_set_inode_lower (struct inode*,struct inode*) ;
 int ecryptfs_symlink_iops ;
 int fsstack_copy_attr_all (struct inode*,struct inode*) ;
 int fsstack_copy_inode_size (struct inode*,struct inode*) ;
 int init_special_inode (struct inode*,int ,int ) ;
 scalar_t__ special_file (int ) ;

__attribute__((used)) static int ecryptfs_inode_set(struct inode *inode, void *opaque)
{
 struct inode *lower_inode = opaque;

 ecryptfs_set_inode_lower(inode, lower_inode);
 fsstack_copy_attr_all(inode, lower_inode);

 fsstack_copy_inode_size(inode, lower_inode);
 inode->i_ino = lower_inode->i_ino;
 inode->i_mapping->a_ops = &ecryptfs_aops;

 if (S_ISLNK(inode->i_mode))
  inode->i_op = &ecryptfs_symlink_iops;
 else if (S_ISDIR(inode->i_mode))
  inode->i_op = &ecryptfs_dir_iops;
 else
  inode->i_op = &ecryptfs_main_iops;

 if (S_ISDIR(inode->i_mode))
  inode->i_fop = &ecryptfs_dir_fops;
 else if (special_file(inode->i_mode))
  init_special_inode(inode, inode->i_mode, inode->i_rdev);
 else
  inode->i_fop = &ecryptfs_main_fops;

 return 0;
}
