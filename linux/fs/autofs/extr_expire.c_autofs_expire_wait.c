
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {struct dentry* dentry; } ;
struct dentry {int d_sb; } ;
struct autofs_sb_info {int fs_lock; } ;
struct autofs_info {int flags; int expire_complete; } ;


 int AUTOFS_INF_EXPIRING ;
 int AUTOFS_INF_WANT_EXPIRE ;
 int EAGAIN ;
 int ECHILD ;
 int HZ ;
 int NFY_NONE ;
 struct autofs_info* autofs_dentry_ino (struct dentry*) ;
 struct autofs_sb_info* autofs_sbi (int ) ;
 int autofs_wait (struct autofs_sb_info*,struct path const*,int ) ;
 scalar_t__ d_unhashed (struct dentry*) ;
 int pr_debug (char*,...) ;
 int schedule_timeout_uninterruptible (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_for_completion (int *) ;

int autofs_expire_wait(const struct path *path, int rcu_walk)
{
 struct dentry *dentry = path->dentry;
 struct autofs_sb_info *sbi = autofs_sbi(dentry->d_sb);
 struct autofs_info *ino = autofs_dentry_ino(dentry);
 int status;
 int state;


 if (!(ino->flags & AUTOFS_INF_WANT_EXPIRE))
  return 0;
 if (rcu_walk)
  return -ECHILD;

retry:
 spin_lock(&sbi->fs_lock);
 state = ino->flags & (AUTOFS_INF_WANT_EXPIRE | AUTOFS_INF_EXPIRING);
 if (state == AUTOFS_INF_WANT_EXPIRE) {
  spin_unlock(&sbi->fs_lock);




  schedule_timeout_uninterruptible(HZ/10);
  goto retry;
 }
 if (state & AUTOFS_INF_EXPIRING) {
  spin_unlock(&sbi->fs_lock);

  pr_debug("waiting for expire %p name=%pd\n", dentry, dentry);

  status = autofs_wait(sbi, path, NFY_NONE);
  wait_for_completion(&ino->expire_complete);

  pr_debug("expire done status=%d\n", status);

  if (d_unhashed(dentry))
   return -EAGAIN;

  return status;
 }
 spin_unlock(&sbi->fs_lock);

 return 0;
}
