
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 struct dentry* d_find_alias (struct inode*) ;
 int d_invalidate (struct dentry*) ;
 int d_prune_aliases (struct inode*) ;
 int dout (char*,struct inode*) ;
 int dput (struct dentry*) ;

__attribute__((used)) static void invalidate_aliases(struct inode *inode)
{
 struct dentry *dn, *prev = ((void*)0);

 dout("invalidate_aliases inode %p\n", inode);
 d_prune_aliases(inode);
 while ((dn = d_find_alias(inode))) {
  if (dn == prev) {
   dput(dn);
   break;
  }
  d_invalidate(dn);
  if (prev)
   dput(prev);
  prev = dn;
 }
 if (prev)
  dput(prev);
}
