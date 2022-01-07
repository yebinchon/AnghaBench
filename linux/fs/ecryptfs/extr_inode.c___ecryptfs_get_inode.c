
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {scalar_t__ i_sb; int i_state; } ;


 int EACCES ;
 struct inode* ERR_PTR (int ) ;
 int ESTALE ;
 int EXDEV ;
 int I_NEW ;
 int ecryptfs_inode_set ;
 int ecryptfs_inode_test ;
 scalar_t__ ecryptfs_superblock_to_lower (struct super_block*) ;
 struct inode* iget5_locked (struct super_block*,unsigned long,int ,int ,struct inode*) ;
 int igrab (struct inode*) ;
 int iput (struct inode*) ;

__attribute__((used)) static struct inode *__ecryptfs_get_inode(struct inode *lower_inode,
       struct super_block *sb)
{
 struct inode *inode;

 if (lower_inode->i_sb != ecryptfs_superblock_to_lower(sb))
  return ERR_PTR(-EXDEV);
 if (!igrab(lower_inode))
  return ERR_PTR(-ESTALE);
 inode = iget5_locked(sb, (unsigned long)lower_inode,
        ecryptfs_inode_test, ecryptfs_inode_set,
        lower_inode);
 if (!inode) {
  iput(lower_inode);
  return ERR_PTR(-EACCES);
 }
 if (!(inode->i_state & I_NEW))
  iput(lower_inode);

 return inode;
}
