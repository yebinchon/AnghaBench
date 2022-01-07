
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct super_block {int s_root; } ;
struct dentry {int dummy; } ;
struct autofs_sb_info {unsigned long exp_timeout; int fs_lock; } ;
struct autofs_info {int flags; int expire_complete; } ;


 int AUTOFS_INF_EXPIRING ;
 int AUTOFS_INF_PENDING ;
 int AUTOFS_INF_WANT_EXPIRE ;
 struct autofs_info* autofs_dentry_ino (struct dentry*) ;
 int autofs_direct_busy (struct vfsmount*,struct dentry*,unsigned long,unsigned int) ;
 struct dentry* dget (int ) ;
 int dput (struct dentry*) ;
 int init_completion (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int synchronize_rcu () ;

__attribute__((used)) static struct dentry *autofs_expire_direct(struct super_block *sb,
        struct vfsmount *mnt,
        struct autofs_sb_info *sbi,
        unsigned int how)
{
 struct dentry *root = dget(sb->s_root);
 struct autofs_info *ino;
 unsigned long timeout;

 if (!root)
  return ((void*)0);

 timeout = sbi->exp_timeout;

 if (!autofs_direct_busy(mnt, root, timeout, how)) {
  spin_lock(&sbi->fs_lock);
  ino = autofs_dentry_ino(root);

  if (ino->flags & AUTOFS_INF_PENDING) {
   spin_unlock(&sbi->fs_lock);
   goto out;
  }
  ino->flags |= AUTOFS_INF_WANT_EXPIRE;
  spin_unlock(&sbi->fs_lock);
  synchronize_rcu();
  if (!autofs_direct_busy(mnt, root, timeout, how)) {
   spin_lock(&sbi->fs_lock);
   ino->flags |= AUTOFS_INF_EXPIRING;
   init_completion(&ino->expire_complete);
   spin_unlock(&sbi->fs_lock);
   return root;
  }
  spin_lock(&sbi->fs_lock);
  ino->flags &= ~AUTOFS_INF_WANT_EXPIRE;
  spin_unlock(&sbi->fs_lock);
 }
out:
 dput(root);

 return ((void*)0);
}
