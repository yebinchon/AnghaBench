
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct super_block {struct dentry* s_root; } ;
struct dentry {int dummy; } ;
struct autofs_sb_info {unsigned long exp_timeout; int fs_lock; } ;
struct autofs_info {int flags; int expire_complete; } ;


 unsigned int AUTOFS_EXP_LEAVES ;
 int AUTOFS_INF_EXPIRING ;
 int AUTOFS_INF_WANT_EXPIRE ;
 struct autofs_info* autofs_dentry_ino (struct dentry*) ;
 int dput (struct dentry*) ;
 struct dentry* get_next_positive_subdir (struct dentry*,struct dentry*) ;
 int init_completion (int *) ;
 int pr_debug (char*,struct dentry*,struct dentry*) ;
 struct dentry* should_expire (struct dentry*,struct vfsmount*,unsigned long,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int synchronize_rcu () ;

__attribute__((used)) static struct dentry *autofs_expire_indirect(struct super_block *sb,
          struct vfsmount *mnt,
          struct autofs_sb_info *sbi,
          unsigned int how)
{
 unsigned long timeout;
 struct dentry *root = sb->s_root;
 struct dentry *dentry;
 struct dentry *expired;
 struct dentry *found;
 struct autofs_info *ino;

 if (!root)
  return ((void*)0);

 timeout = sbi->exp_timeout;

 dentry = ((void*)0);
 while ((dentry = get_next_positive_subdir(dentry, root))) {
  spin_lock(&sbi->fs_lock);
  ino = autofs_dentry_ino(dentry);
  if (ino->flags & AUTOFS_INF_WANT_EXPIRE) {
   spin_unlock(&sbi->fs_lock);
   continue;
  }
  spin_unlock(&sbi->fs_lock);

  expired = should_expire(dentry, mnt, timeout, how);
  if (!expired)
   continue;

  spin_lock(&sbi->fs_lock);
  ino = autofs_dentry_ino(expired);
  ino->flags |= AUTOFS_INF_WANT_EXPIRE;
  spin_unlock(&sbi->fs_lock);
  synchronize_rcu();




  how &= ~AUTOFS_EXP_LEAVES;
  found = should_expire(expired, mnt, timeout, how);
  if (!found || found != expired)

   goto next;

  if (expired != dentry)
   dput(dentry);

  spin_lock(&sbi->fs_lock);
  goto found;
next:
  spin_lock(&sbi->fs_lock);
  ino->flags &= ~AUTOFS_INF_WANT_EXPIRE;
  spin_unlock(&sbi->fs_lock);
  if (expired != dentry)
   dput(expired);
 }
 return ((void*)0);

found:
 pr_debug("returning %p %pd\n", expired, expired);
 ino->flags |= AUTOFS_INF_EXPIRING;
 init_completion(&ino->expire_complete);
 spin_unlock(&sbi->fs_lock);
 return expired;
}
