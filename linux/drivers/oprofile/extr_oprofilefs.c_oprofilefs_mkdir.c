
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int * i_fop; int * i_op; } ;
struct dentry {int d_sb; } ;


 int S_IFDIR ;
 int d_add (struct dentry*,struct inode*) ;
 struct dentry* d_alloc_name (struct dentry*,char const*) ;
 int d_inode (struct dentry*) ;
 int dput (struct dentry*) ;
 int inode_lock (int ) ;
 int inode_unlock (int ) ;
 struct inode* oprofilefs_get_inode (int ,int) ;
 int simple_dir_inode_operations ;
 int simple_dir_operations ;

struct dentry *oprofilefs_mkdir(struct dentry *parent, char const *name)
{
 struct dentry *dentry;
 struct inode *inode;

 inode_lock(d_inode(parent));
 dentry = d_alloc_name(parent, name);
 if (!dentry) {
  inode_unlock(d_inode(parent));
  return ((void*)0);
 }
 inode = oprofilefs_get_inode(parent->d_sb, S_IFDIR | 0755);
 if (!inode) {
  dput(dentry);
  inode_unlock(d_inode(parent));
  return ((void*)0);
 }
 inode->i_op = &simple_dir_inode_operations;
 inode->i_fop = &simple_dir_operations;
 d_add(dentry, inode);
 inode_unlock(d_inode(parent));
 return dentry;
}
