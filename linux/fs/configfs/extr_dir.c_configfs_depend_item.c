
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int d_fsdata; } ;
struct config_item {int dummy; } ;
struct TYPE_2__ {struct config_item cg_item; } ;
struct configfs_subsystem {TYPE_1__ su_group; } ;
struct configfs_dirent {int s_dentry; } ;


 int ENOENT ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 int configfs_do_depend_item (int ,struct config_item*) ;
 struct configfs_dirent* configfs_find_subsys_dentry (int ,struct config_item*) ;
 struct dentry* configfs_pin_fs () ;
 int configfs_release_fs () ;
 int d_inode (struct dentry*) ;
 int inode_lock (int ) ;
 int inode_unlock (int ) ;

int configfs_depend_item(struct configfs_subsystem *subsys,
    struct config_item *target)
{
 int ret;
 struct configfs_dirent *subsys_sd;
 struct config_item *s_item = &subsys->su_group.cg_item;
 struct dentry *root;





 root = configfs_pin_fs();
 if (IS_ERR(root))
  return PTR_ERR(root);






 inode_lock(d_inode(root));

 subsys_sd = configfs_find_subsys_dentry(root->d_fsdata, s_item);
 if (!subsys_sd) {
  ret = -ENOENT;
  goto out_unlock_fs;
 }


 ret = configfs_do_depend_item(subsys_sd->s_dentry, target);

out_unlock_fs:
 inode_unlock(d_inode(root));





 configfs_release_fs();

 return ret;
}
