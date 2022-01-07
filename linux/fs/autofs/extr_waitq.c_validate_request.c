
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct path {struct dentry* dentry; int mnt; } ;
struct dentry {int d_name; struct dentry* d_parent; } ;
struct autofs_wait_queue {int dummy; } ;
struct autofs_sb_info {int flags; int wq_mutex; } ;
struct autofs_info {int flags; } ;
typedef enum autofs_notify { ____Placeholder_autofs_notify } autofs_notify ;


 int AUTOFS_INF_EXPIRING ;
 int AUTOFS_SBI_CATATONIC ;
 int EINTR ;
 int ENOENT ;
 int HZ ;
 int IS_ROOT (struct dentry*) ;
 int NFY_MOUNT ;
 int NFY_NONE ;
 struct autofs_info* autofs_dentry_ino (struct dentry*) ;
 struct autofs_wait_queue* autofs_find_wait (struct autofs_sb_info*,struct qstr const*) ;
 struct dentry* d_lookup (struct dentry*,int *) ;
 scalar_t__ d_really_is_positive (struct dentry*) ;
 scalar_t__ d_unhashed (struct dentry*) ;
 int dput (struct dentry*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ path_has_submounts (struct path*) ;
 int schedule_timeout_interruptible (int) ;

__attribute__((used)) static int validate_request(struct autofs_wait_queue **wait,
       struct autofs_sb_info *sbi,
       const struct qstr *qstr,
       const struct path *path, enum autofs_notify notify)
{
 struct dentry *dentry = path->dentry;
 struct autofs_wait_queue *wq;
 struct autofs_info *ino;

 if (sbi->flags & AUTOFS_SBI_CATATONIC)
  return -ENOENT;


 wq = autofs_find_wait(sbi, qstr);
 if (wq) {
  *wait = wq;
  return 1;
 }

 *wait = ((void*)0);


 ino = autofs_dentry_ino(dentry);
 if (!ino)
  return 1;





 if (notify == NFY_NONE) {







  while (ino->flags & AUTOFS_INF_EXPIRING) {
   mutex_unlock(&sbi->wq_mutex);
   schedule_timeout_interruptible(HZ/10);
   if (mutex_lock_interruptible(&sbi->wq_mutex))
    return -EINTR;

   if (sbi->flags & AUTOFS_SBI_CATATONIC)
    return -ENOENT;

   wq = autofs_find_wait(sbi, qstr);
   if (wq) {
    *wait = wq;
    return 1;
   }
  }






  return 0;
 }





 if (notify == NFY_MOUNT) {
  struct dentry *new = ((void*)0);
  struct path this;
  int valid = 1;
  if (!IS_ROOT(dentry)) {
   if (d_unhashed(dentry) &&
       d_really_is_positive(dentry)) {
    struct dentry *parent = dentry->d_parent;

    new = d_lookup(parent, &dentry->d_name);
    if (new)
     dentry = new;
   }
  }
  this.mnt = path->mnt;
  this.dentry = dentry;
  if (path_has_submounts(&this))
   valid = 0;

  if (new)
   dput(new);
  return valid;
 }

 return 1;
}
