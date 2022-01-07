
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct dentry {int dummy; } ;
struct autofs_info {void* last_used; int count; } ;


 unsigned int AUTOFS_EXP_FORCED ;
 unsigned int atomic_read (int *) ;
 int autofs_can_expire (struct dentry*,unsigned long,unsigned int) ;
 struct autofs_info* autofs_dentry_ino (struct dentry*) ;
 scalar_t__ autofs_mount_busy (struct vfsmount*,struct dentry*,unsigned int) ;
 unsigned int d_count (struct dentry*) ;
 scalar_t__ d_mountpoint (struct dentry*) ;
 int dput (struct dentry*) ;
 struct dentry* get_next_positive_dentry (struct dentry*,struct dentry*) ;
 void* jiffies ;
 int pr_debug (char*,struct dentry*,struct dentry*) ;
 int simple_positive (struct dentry*) ;

__attribute__((used)) static int autofs_tree_busy(struct vfsmount *mnt,
       struct dentry *top,
       unsigned long timeout,
       unsigned int how)
{
 struct autofs_info *top_ino = autofs_dentry_ino(top);
 struct dentry *p;

 pr_debug("top %p %pd\n", top, top);


 if (!simple_positive(top))
  return 1;

 p = ((void*)0);
 while ((p = get_next_positive_dentry(p, top))) {
  pr_debug("dentry %p %pd\n", p, p);







  if (d_mountpoint(p)) {
   if (autofs_mount_busy(mnt, p, how)) {
    top_ino->last_used = jiffies;
    dput(p);
    return 1;
   }
  } else {
   struct autofs_info *ino = autofs_dentry_ino(p);
   unsigned int ino_count = atomic_read(&ino->count);


   if (p == top)
    ino_count += 2;
   else
    ino_count++;

   if (d_count(p) > ino_count) {
    top_ino->last_used = jiffies;
    dput(p);
    return 1;
   }
  }
 }


 if (how & AUTOFS_EXP_FORCED)
  return 0;


 if (!autofs_can_expire(top, timeout, how))
  return 1;

 return 0;
}
