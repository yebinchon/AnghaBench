
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int __debugfs_file_removed (struct dentry*) ;
 int d_delete (struct dentry*) ;
 int d_inode (struct dentry*) ;
 scalar_t__ d_is_dir (struct dentry*) ;
 scalar_t__ d_is_reg (struct dentry*) ;
 int dget (struct dentry*) ;
 int dput (struct dentry*) ;
 int fsnotify_rmdir (int ,struct dentry*) ;
 int fsnotify_unlink (int ,struct dentry*) ;
 scalar_t__ simple_positive (struct dentry*) ;
 int simple_rmdir (int ,struct dentry*) ;
 int simple_unlink (int ,struct dentry*) ;

__attribute__((used)) static int __debugfs_remove(struct dentry *dentry, struct dentry *parent)
{
 int ret = 0;

 if (simple_positive(dentry)) {
  dget(dentry);
  if (d_is_dir(dentry)) {
   ret = simple_rmdir(d_inode(parent), dentry);
   if (!ret)
    fsnotify_rmdir(d_inode(parent), dentry);
  } else {
   simple_unlink(d_inode(parent), dentry);
   fsnotify_unlink(d_inode(parent), dentry);
  }
  if (!ret)
   d_delete(dentry);
  if (d_is_reg(dentry))
   __debugfs_file_removed(dentry);
  dput(dentry);
 }
 return ret;
}
