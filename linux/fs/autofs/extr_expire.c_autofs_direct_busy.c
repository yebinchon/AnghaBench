
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct dentry {int dummy; } ;
struct autofs_info {int last_used; } ;


 unsigned int AUTOFS_EXP_FORCED ;
 int autofs_can_expire (struct dentry*,unsigned long,unsigned int) ;
 struct autofs_info* autofs_dentry_ino (struct dentry*) ;
 int jiffies ;
 int may_umount_tree (struct vfsmount*) ;
 int pr_debug (char*,struct dentry*,struct dentry*) ;

__attribute__((used)) static int autofs_direct_busy(struct vfsmount *mnt,
         struct dentry *top,
         unsigned long timeout,
         unsigned int how)
{
 pr_debug("top %p %pd\n", top, top);


 if (how & AUTOFS_EXP_FORCED)
  return 0;


 if (!may_umount_tree(mnt)) {
  struct autofs_info *ino;

  ino = autofs_dentry_ino(top);
  if (ino)
   ino->last_used = jiffies;
  return 1;
 }


 if (!autofs_can_expire(top, timeout, how))
  return 1;

 return 0;
}
