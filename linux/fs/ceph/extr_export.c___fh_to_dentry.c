
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct super_block {int dummy; } ;
struct inode {scalar_t__ i_nlink; } ;
struct dentry {int dummy; } ;


 struct dentry* ERR_CAST (struct inode*) ;
 struct dentry* ERR_PTR (int ) ;
 int ESTALE ;
 scalar_t__ IS_ERR (struct inode*) ;
 struct inode* __lookup_inode (struct super_block*,int ) ;
 struct dentry* d_obtain_alias (struct inode*) ;
 int iput (struct inode*) ;

__attribute__((used)) static struct dentry *__fh_to_dentry(struct super_block *sb, u64 ino)
{
 struct inode *inode = __lookup_inode(sb, ino);
 if (IS_ERR(inode))
  return ERR_CAST(inode);
 if (inode->i_nlink == 0) {
  iput(inode);
  return ERR_PTR(-ESTALE);
 }
 return d_obtain_alias(inode);
}
