
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct dentry {int dummy; } ;


 unsigned int AUTOFS_EXP_FORCED ;
 scalar_t__ autofs_can_expire (struct dentry*,unsigned long,unsigned int) ;
 scalar_t__ autofs_mount_busy (struct vfsmount*,struct dentry*,unsigned int) ;
 scalar_t__ d_mountpoint (struct dentry*) ;
 struct dentry* get_next_positive_dentry (struct dentry*,struct dentry*) ;
 int pr_debug (char*,struct dentry*,struct dentry*) ;

__attribute__((used)) static struct dentry *autofs_check_leaves(struct vfsmount *mnt,
       struct dentry *parent,
       unsigned long timeout,
       unsigned int how)
{
 struct dentry *p;

 pr_debug("parent %p %pd\n", parent, parent);

 p = ((void*)0);
 while ((p = get_next_positive_dentry(p, parent))) {
  pr_debug("dentry %p %pd\n", p, p);

  if (d_mountpoint(p)) {

   if (autofs_mount_busy(mnt, p, how))
    continue;




   if (how & AUTOFS_EXP_FORCED)
    return p;


   if (autofs_can_expire(p, timeout, how))
    return p;
  }
 }
 return ((void*)0);
}
