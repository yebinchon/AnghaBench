
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct super_block {int dummy; } ;
struct inode {int * i_op; TYPE_1__* i_mapping; int i_ino; } ;
struct configfs_dirent {int s_iattr; } ;
struct TYPE_2__ {int * a_ops; } ;


 int configfs_aops ;
 int configfs_inode_operations ;
 int get_next_ino () ;
 struct inode* new_inode (struct super_block*) ;
 int set_default_inode_attr (struct inode*,int ) ;
 int set_inode_attr (struct inode*,int ) ;

struct inode *configfs_new_inode(umode_t mode, struct configfs_dirent *sd,
     struct super_block *s)
{
 struct inode * inode = new_inode(s);
 if (inode) {
  inode->i_ino = get_next_ino();
  inode->i_mapping->a_ops = &configfs_aops;
  inode->i_op = &configfs_inode_operations;

  if (sd->s_iattr) {




   set_inode_attr(inode, sd->s_iattr);
  } else
   set_default_inode_attr(inode, mode);
 }
 return inode;
}
