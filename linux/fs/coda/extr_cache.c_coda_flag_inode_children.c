
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;
struct dentry {int dummy; } ;


 int S_ISDIR (int ) ;
 int coda_flag_children (struct dentry*,int) ;
 struct dentry* d_find_alias (struct inode*) ;
 int dput (struct dentry*) ;
 int shrink_dcache_parent (struct dentry*) ;

void coda_flag_inode_children(struct inode *inode, int flag)
{
 struct dentry *alias_de;

 if ( !inode || !S_ISDIR(inode->i_mode))
  return;

 alias_de = d_find_alias(inode);
 if (!alias_de)
  return;
 coda_flag_children(alias_de, flag);
 shrink_dcache_parent(alias_de);
 dput(alias_de);
}
