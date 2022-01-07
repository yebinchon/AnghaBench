
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct path {struct vfsmount* mnt; struct dentry* dentry; } ;
struct dentry {int d_sb; } ;
struct autofs_sb_info {int type; } ;
struct autofs_info {int last_used; } ;


 unsigned int AUTOFS_EXP_FORCED ;
 struct autofs_info* autofs_dentry_ino (struct dentry*) ;
 struct autofs_sb_info* autofs_sbi (int ) ;
 scalar_t__ autofs_type_indirect (int ) ;
 int follow_down_one (struct path*) ;
 scalar_t__ is_autofs_dentry (struct dentry*) ;
 int jiffies ;
 int may_umount_tree (struct vfsmount*) ;
 int path_get (struct path*) ;
 int path_put (struct path*) ;
 int pr_debug (char*,...) ;

__attribute__((used)) static int autofs_mount_busy(struct vfsmount *mnt,
        struct dentry *dentry, unsigned int how)
{
 struct dentry *top = dentry;
 struct path path = {.mnt = mnt, .dentry = dentry};
 int status = 1;

 pr_debug("dentry %p %pd\n", dentry, dentry);

 path_get(&path);

 if (!follow_down_one(&path))
  goto done;

 if (is_autofs_dentry(path.dentry)) {
  struct autofs_sb_info *sbi = autofs_sbi(path.dentry->d_sb);


  if (autofs_type_indirect(sbi->type))
   goto done;
 }


 if (how & AUTOFS_EXP_FORCED) {
  status = 0;
  goto done;
 }


 if (!may_umount_tree(path.mnt)) {
  struct autofs_info *ino;

  ino = autofs_dentry_ino(top);
  ino->last_used = jiffies;
  goto done;
 }

 status = 0;
done:
 pr_debug("returning = %d\n", status);
 path_put(&path);
 return status;
}
