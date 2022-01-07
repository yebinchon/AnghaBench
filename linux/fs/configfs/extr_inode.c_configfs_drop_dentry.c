
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_lock; } ;
struct configfs_dirent {struct dentry* s_dentry; } ;


 int __d_drop (struct dentry*) ;
 int d_inode (struct dentry*) ;
 int dget_dlock (struct dentry*) ;
 scalar_t__ simple_positive (struct dentry*) ;
 int simple_unlink (int ,struct dentry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void configfs_drop_dentry(struct configfs_dirent * sd, struct dentry * parent)
{
 struct dentry * dentry = sd->s_dentry;

 if (dentry) {
  spin_lock(&dentry->d_lock);
  if (simple_positive(dentry)) {
   dget_dlock(dentry);
   __d_drop(dentry);
   spin_unlock(&dentry->d_lock);
   simple_unlink(d_inode(parent), dentry);
  } else
   spin_unlock(&dentry->d_lock);
 }
}
