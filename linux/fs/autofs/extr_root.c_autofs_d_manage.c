
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {struct dentry* dentry; } ;
struct inode {int i_mode; } ;
struct dentry {int d_subdirs; int d_sb; } ;
struct autofs_sb_info {int fs_lock; } ;
struct autofs_info {int flags; } ;


 int AUTOFS_INF_EXPIRING ;
 int AUTOFS_INF_WANT_EXPIRE ;
 int ECHILD ;
 int EISDIR ;
 scalar_t__ S_ISLNK (int ) ;
 struct autofs_info* autofs_dentry_ino (struct dentry*) ;
 int autofs_mount_wait (struct path const*,int) ;
 scalar_t__ autofs_oz_mode (struct autofs_sb_info*) ;
 struct autofs_sb_info* autofs_sbi (int ) ;
 struct inode* d_inode_rcu (struct dentry*) ;
 scalar_t__ d_is_symlink (struct dentry*) ;
 scalar_t__ d_really_is_positive (struct dentry*) ;
 int do_expire_wait (struct path const*,int) ;
 scalar_t__ list_empty (int *) ;
 scalar_t__ path_is_mountpoint (struct path const*) ;
 int pr_debug (char*,struct dentry*,struct dentry*) ;
 int simple_empty (struct dentry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int autofs_d_manage(const struct path *path, bool rcu_walk)
{
 struct dentry *dentry = path->dentry;
 struct autofs_sb_info *sbi = autofs_sbi(dentry->d_sb);
 struct autofs_info *ino = autofs_dentry_ino(dentry);
 int status;

 pr_debug("dentry=%p %pd\n", dentry, dentry);


 if (autofs_oz_mode(sbi)) {
  if (!path_is_mountpoint(path))
   return -EISDIR;
  return 0;
 }


 if (do_expire_wait(path, rcu_walk) == -ECHILD)
  return -ECHILD;





 status = autofs_mount_wait(path, rcu_walk);
 if (status)
  return status;

 if (rcu_walk) {







  struct inode *inode;

  if (ino->flags & AUTOFS_INF_WANT_EXPIRE)
   return 0;
  if (path_is_mountpoint(path))
   return 0;
  inode = d_inode_rcu(dentry);
  if (inode && S_ISLNK(inode->i_mode))
   return -EISDIR;
  if (list_empty(&dentry->d_subdirs))
   return 0;
  if (!simple_empty(dentry))
   return -EISDIR;
  return 0;
 }

 spin_lock(&sbi->fs_lock);







 if (!(ino->flags & AUTOFS_INF_EXPIRING)) {






  if ((!path_is_mountpoint(path) && !simple_empty(dentry)) ||
      (d_really_is_positive(dentry) && d_is_symlink(dentry)))
   status = -EISDIR;
 }
 spin_unlock(&sbi->fs_lock);

 return status;
}
