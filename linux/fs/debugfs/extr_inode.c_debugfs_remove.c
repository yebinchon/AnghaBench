
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {struct dentry* d_parent; } ;


 scalar_t__ IS_ERR_OR_NULL (struct dentry*) ;
 int __debugfs_remove (struct dentry*,struct dentry*) ;
 int d_inode (struct dentry*) ;
 int debugfs_mount ;
 int debugfs_mount_count ;
 int inode_lock (int ) ;
 int inode_unlock (int ) ;
 int simple_release_fs (int *,int *) ;

void debugfs_remove(struct dentry *dentry)
{
 struct dentry *parent;
 int ret;

 if (IS_ERR_OR_NULL(dentry))
  return;

 parent = dentry->d_parent;
 inode_lock(d_inode(parent));
 ret = __debugfs_remove(dentry, parent);
 inode_unlock(d_inode(parent));
 if (!ret)
  simple_release_fs(&debugfs_mount, &debugfs_mount_count);
}
