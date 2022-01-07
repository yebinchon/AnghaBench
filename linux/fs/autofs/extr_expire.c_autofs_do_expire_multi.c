
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct super_block {int dummy; } ;
struct path {struct dentry* dentry; struct vfsmount* mnt; } ;
struct dentry {int dummy; } ;
struct autofs_sb_info {int fs_lock; int type; } ;
struct autofs_info {int flags; int expire_complete; int last_used; } ;


 int AUTOFS_INF_EXPIRING ;
 int AUTOFS_INF_WANT_EXPIRE ;
 int EAGAIN ;
 int NFY_EXPIRE ;
 struct autofs_info* autofs_dentry_ino (struct dentry*) ;
 struct dentry* autofs_expire_direct (struct super_block*,struct vfsmount*,struct autofs_sb_info*,unsigned int) ;
 struct dentry* autofs_expire_indirect (struct super_block*,struct vfsmount*,struct autofs_sb_info*,unsigned int) ;
 scalar_t__ autofs_type_trigger (int ) ;
 int autofs_wait (struct autofs_sb_info*,struct path const*,int ) ;
 int complete_all (int *) ;
 int dput (struct dentry*) ;
 int jiffies ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int autofs_do_expire_multi(struct super_block *sb, struct vfsmount *mnt,
      struct autofs_sb_info *sbi, unsigned int how)
{
 struct dentry *dentry;
 int ret = -EAGAIN;

 if (autofs_type_trigger(sbi->type))
  dentry = autofs_expire_direct(sb, mnt, sbi, how);
 else
  dentry = autofs_expire_indirect(sb, mnt, sbi, how);

 if (dentry) {
  struct autofs_info *ino = autofs_dentry_ino(dentry);
  const struct path path = { .mnt = mnt, .dentry = dentry };




  ret = autofs_wait(sbi, &path, NFY_EXPIRE);

  spin_lock(&sbi->fs_lock);

  ino->last_used = jiffies;
  ino->flags &= ~(AUTOFS_INF_EXPIRING|AUTOFS_INF_WANT_EXPIRE);
  complete_all(&ino->expire_complete);
  spin_unlock(&sbi->fs_lock);
  dput(dentry);
 }

 return ret;
}
