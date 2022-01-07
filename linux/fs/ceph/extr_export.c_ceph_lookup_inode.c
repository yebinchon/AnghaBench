
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct super_block {int dummy; } ;
struct inode {scalar_t__ i_nlink; } ;


 struct inode* ERR_PTR (int ) ;
 int ESTALE ;
 scalar_t__ IS_ERR (struct inode*) ;
 struct inode* __lookup_inode (struct super_block*,int ) ;
 int iput (struct inode*) ;

struct inode *ceph_lookup_inode(struct super_block *sb, u64 ino)
{
 struct inode *inode = __lookup_inode(sb, ino);
 if (IS_ERR(inode))
  return inode;
 if (inode->i_nlink == 0) {
  iput(inode);
  return ERR_PTR(-ESTALE);
 }
 return inode;
}
