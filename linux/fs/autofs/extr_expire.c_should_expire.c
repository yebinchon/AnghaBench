
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct dentry {int dummy; } ;
struct autofs_info {int flags; int count; } ;


 unsigned int AUTOFS_EXP_FORCED ;
 unsigned int AUTOFS_EXP_LEAVES ;
 int AUTOFS_INF_PENDING ;
 int atomic_read (int *) ;
 scalar_t__ autofs_can_expire (struct dentry*,unsigned long,unsigned int) ;
 struct dentry* autofs_check_leaves (struct vfsmount*,struct dentry*,unsigned long,unsigned int) ;
 struct autofs_info* autofs_dentry_ino (struct dentry*) ;
 scalar_t__ autofs_mount_busy (struct vfsmount*,struct dentry*,unsigned int) ;
 int autofs_tree_busy (struct vfsmount*,struct dentry*,unsigned long,unsigned int) ;
 unsigned int d_count (struct dentry*) ;
 scalar_t__ d_is_symlink (struct dentry*) ;
 scalar_t__ d_mountpoint (struct dentry*) ;
 scalar_t__ d_really_is_positive (struct dentry*) ;
 int dput (struct dentry*) ;
 int pr_debug (char*,struct dentry*,struct dentry*) ;
 scalar_t__ simple_empty (struct dentry*) ;

__attribute__((used)) static struct dentry *should_expire(struct dentry *dentry,
        struct vfsmount *mnt,
        unsigned long timeout,
        unsigned int how)
{
 struct autofs_info *ino = autofs_dentry_ino(dentry);
 unsigned int ino_count;


 if (ino->flags & AUTOFS_INF_PENDING)
  return ((void*)0);







 if (d_mountpoint(dentry)) {
  pr_debug("checking mountpoint %p %pd\n", dentry, dentry);


  if (autofs_mount_busy(mnt, dentry, how))
   return ((void*)0);




  if (how & AUTOFS_EXP_FORCED)
   return dentry;


  if (autofs_can_expire(dentry, timeout, how))
   return dentry;
  return ((void*)0);
 }

 if (d_really_is_positive(dentry) && d_is_symlink(dentry)) {
  pr_debug("checking symlink %p %pd\n", dentry, dentry);


  if (how & AUTOFS_EXP_FORCED)
   return dentry;





  if (autofs_can_expire(dentry, timeout, how))
   return dentry;
  return ((void*)0);
 }

 if (simple_empty(dentry))
  return ((void*)0);


 if (!(how & AUTOFS_EXP_LEAVES)) {

  if (!(how & AUTOFS_EXP_FORCED)) {

   ino_count = atomic_read(&ino->count) + 1;
   if (d_count(dentry) > ino_count)
    return ((void*)0);
  }

  if (!autofs_tree_busy(mnt, dentry, timeout, how))
   return dentry;




 } else {
  struct dentry *expired;


  if (!(how & AUTOFS_EXP_FORCED)) {

   ino_count = atomic_read(&ino->count) + 1;
   if (d_count(dentry) > ino_count)
    return ((void*)0);
  }

  expired = autofs_check_leaves(mnt, dentry, timeout, how);
  if (expired) {
   if (expired == dentry)
    dput(dentry);
   return expired;
  }
 }
 return ((void*)0);
}
