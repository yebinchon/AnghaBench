
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;
struct dentry {int dummy; } ;


 scalar_t__ S_ISDIR (int ) ;
 struct dentry* d_find_any_alias (struct inode*) ;
 int d_prune_aliases (struct inode*) ;
 int dput (struct dentry*) ;
 int shrink_dcache_parent (struct dentry*) ;

__attribute__((used)) static void shrink_dcache_inode(struct inode *inode)
{
 struct dentry *dentry;

 if (S_ISDIR(inode->i_mode)) {
  dentry = d_find_any_alias(inode);
  if (dentry) {
   shrink_dcache_parent(dentry);
   dput(dentry);
  }
 }
 d_prune_aliases(inode);
}
