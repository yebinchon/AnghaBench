
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct super_block {int dummy; } ;
struct inode {int dummy; } ;


 struct inode* ERR_CAST (struct inode*) ;
 struct inode* ERR_PTR (int ) ;
 int ESTALE ;
 scalar_t__ IS_ERR (struct inode*) ;
 struct inode* affs_iget (struct super_block*,int ) ;
 int affs_validblock (struct super_block*,int ) ;

__attribute__((used)) static struct inode *affs_nfs_get_inode(struct super_block *sb, u64 ino,
     u32 generation)
{
 struct inode *inode;

 if (!affs_validblock(sb, ino))
  return ERR_PTR(-ESTALE);

 inode = affs_iget(sb, ino);
 if (IS_ERR(inode))
  return ERR_CAST(inode);

 return inode;
}
