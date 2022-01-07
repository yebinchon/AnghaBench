
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int i_mode; int * i_fop; int * i_op; int i_ino; } ;


 int CTL_INO ;
 int ENOMEM ;
 struct inode* ERR_PTR (int ) ;
 int coda_ioctl_inode_operations ;
 int coda_ioctl_operations ;
 struct inode* new_inode (struct super_block*) ;

struct inode *coda_cnode_makectl(struct super_block *sb)
{
 struct inode *inode = new_inode(sb);
 if (inode) {
  inode->i_ino = CTL_INO;
  inode->i_op = &coda_ioctl_inode_operations;
  inode->i_fop = &coda_ioctl_operations;
  inode->i_mode = 0444;
  return inode;
 }
 return ERR_PTR(-ENOMEM);
}
