
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct path {struct dentry* dentry; } ;
struct dentry {int d_sb; } ;
struct autofs_sb_info {int version; int fs_lock; } ;
struct autofs_info {int flags; } ;


 int AUTOFS_INF_PENDING ;
 int EAGAIN ;
 int ENOENT ;
 struct vfsmount* ERR_PTR (int) ;
 struct autofs_info* autofs_dentry_ino (struct dentry*) ;
 int autofs_mount_wait (struct path*,int ) ;
 struct dentry* autofs_mountpoint_changed (struct path*) ;
 scalar_t__ autofs_oz_mode (struct autofs_sb_info*) ;
 struct autofs_sb_info* autofs_sbi (int ) ;
 scalar_t__ d_is_symlink (struct dentry*) ;
 scalar_t__ d_really_is_positive (struct dentry*) ;
 int do_expire_wait (struct path*,int ) ;
 scalar_t__ path_has_submounts (struct path*) ;
 int path_is_mountpoint (struct path*) ;
 int pr_debug (char*,struct dentry*,struct dentry*) ;
 int simple_empty (struct dentry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct vfsmount *autofs_d_automount(struct path *path)
{
 struct dentry *dentry = path->dentry;
 struct autofs_sb_info *sbi = autofs_sbi(dentry->d_sb);
 struct autofs_info *ino = autofs_dentry_ino(dentry);
 int status;

 pr_debug("dentry=%p %pd\n", dentry, dentry);


 if (autofs_oz_mode(sbi))
  return ((void*)0);
 status = do_expire_wait(path, 0);
 if (status && status != -EAGAIN)
  return ((void*)0);


 spin_lock(&sbi->fs_lock);
 if (ino->flags & AUTOFS_INF_PENDING) {
  spin_unlock(&sbi->fs_lock);
  status = autofs_mount_wait(path, 0);
  if (status)
   return ERR_PTR(status);
  goto done;
 }






 if (d_really_is_positive(dentry) && d_is_symlink(dentry)) {
  spin_unlock(&sbi->fs_lock);
  goto done;
 }

 if (!path_is_mountpoint(path)) {
  if (sbi->version > 4) {
   if (path_has_submounts(path)) {
    spin_unlock(&sbi->fs_lock);
    goto done;
   }
  } else {
   if (!simple_empty(dentry)) {
    spin_unlock(&sbi->fs_lock);
    goto done;
   }
  }
  ino->flags |= AUTOFS_INF_PENDING;
  spin_unlock(&sbi->fs_lock);
  status = autofs_mount_wait(path, 0);
  spin_lock(&sbi->fs_lock);
  ino->flags &= ~AUTOFS_INF_PENDING;
  if (status) {
   spin_unlock(&sbi->fs_lock);
   return ERR_PTR(status);
  }
 }
 spin_unlock(&sbi->fs_lock);
done:

 dentry = autofs_mountpoint_changed(path);
 if (!dentry)
  return ERR_PTR(-ENOENT);

 return ((void*)0);
}
