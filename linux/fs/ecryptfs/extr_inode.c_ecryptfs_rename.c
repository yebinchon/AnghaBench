
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {struct dentry* d_parent; } ;


 int EINVAL ;
 int ENOTEMPTY ;
 struct inode* d_inode (struct dentry*) ;
 scalar_t__ d_unhashed (struct dentry*) ;
 int dget (struct dentry*) ;
 struct dentry* dget_parent (struct dentry*) ;
 int dput (struct dentry*) ;
 struct dentry* ecryptfs_dentry_to_lower (struct dentry*) ;
 struct inode* ecryptfs_inode_to_lower (struct inode*) ;
 int fsstack_copy_attr_all (struct inode*,struct inode*) ;
 struct dentry* lock_rename (struct dentry*,struct dentry*) ;
 int unlock_rename (struct dentry*,struct dentry*) ;
 int vfs_rename (struct inode*,struct dentry*,struct inode*,struct dentry*,int *,int ) ;

__attribute__((used)) static int
ecryptfs_rename(struct inode *old_dir, struct dentry *old_dentry,
  struct inode *new_dir, struct dentry *new_dentry,
  unsigned int flags)
{
 int rc;
 struct dentry *lower_old_dentry;
 struct dentry *lower_new_dentry;
 struct dentry *lower_old_dir_dentry;
 struct dentry *lower_new_dir_dentry;
 struct dentry *trap = ((void*)0);
 struct inode *target_inode;

 if (flags)
  return -EINVAL;

 lower_old_dentry = ecryptfs_dentry_to_lower(old_dentry);
 lower_new_dentry = ecryptfs_dentry_to_lower(new_dentry);
 dget(lower_old_dentry);
 dget(lower_new_dentry);
 lower_old_dir_dentry = dget_parent(lower_old_dentry);
 lower_new_dir_dentry = dget_parent(lower_new_dentry);
 target_inode = d_inode(new_dentry);
 trap = lock_rename(lower_old_dir_dentry, lower_new_dir_dentry);
 rc = -EINVAL;
 if (lower_old_dentry->d_parent != lower_old_dir_dentry)
  goto out_lock;
 if (lower_new_dentry->d_parent != lower_new_dir_dentry)
  goto out_lock;
 if (d_unhashed(lower_old_dentry) || d_unhashed(lower_new_dentry))
  goto out_lock;

 if (trap == lower_old_dentry)
  goto out_lock;

 if (trap == lower_new_dentry) {
  rc = -ENOTEMPTY;
  goto out_lock;
 }
 rc = vfs_rename(d_inode(lower_old_dir_dentry), lower_old_dentry,
   d_inode(lower_new_dir_dentry), lower_new_dentry,
   ((void*)0), 0);
 if (rc)
  goto out_lock;
 if (target_inode)
  fsstack_copy_attr_all(target_inode,
          ecryptfs_inode_to_lower(target_inode));
 fsstack_copy_attr_all(new_dir, d_inode(lower_new_dir_dentry));
 if (new_dir != old_dir)
  fsstack_copy_attr_all(old_dir, d_inode(lower_old_dir_dentry));
out_lock:
 unlock_rename(lower_old_dir_dentry, lower_new_dir_dentry);
 dput(lower_new_dir_dentry);
 dput(lower_old_dir_dentry);
 dput(lower_new_dentry);
 dput(lower_old_dentry);
 return rc;
}
