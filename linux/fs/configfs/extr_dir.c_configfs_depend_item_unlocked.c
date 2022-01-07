
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* ci_dentry; } ;
struct TYPE_6__ {TYPE_4__ cg_item; } ;
struct configfs_subsystem {TYPE_2__ su_group; } ;
struct configfs_dirent {int s_dentry; } ;
struct config_item {TYPE_3__* ci_dentry; struct config_group* ci_group; } ;
struct config_group {struct config_item cg_item; struct configfs_subsystem* cg_subsys; } ;
struct TYPE_7__ {int d_fsdata; } ;
struct TYPE_5__ {struct configfs_dirent* d_fsdata; } ;


 int EINVAL ;
 int ENOENT ;
 int configfs_do_depend_item (int ,struct config_item*) ;
 struct configfs_dirent* configfs_find_subsys_dentry (int ,TYPE_4__*) ;
 scalar_t__ configfs_is_root (struct config_item*) ;
 int d_inode (TYPE_3__*) ;
 int inode_lock (int ) ;
 int inode_unlock (int ) ;
 int to_config_group (struct config_item*) ;
 struct configfs_subsystem* to_configfs_subsystem (int ) ;

int configfs_depend_item_unlocked(struct configfs_subsystem *caller_subsys,
      struct config_item *target)
{
 struct configfs_subsystem *target_subsys;
 struct config_group *root, *parent;
 struct configfs_dirent *subsys_sd;
 int ret = -ENOENT;


 if (configfs_is_root(target))
  return -EINVAL;

 parent = target->ci_group;




 if (configfs_is_root(&parent->cg_item)) {
  target_subsys = to_configfs_subsystem(to_config_group(target));
  root = parent;
 } else {
  target_subsys = parent->cg_subsys;

  for (root = parent; !configfs_is_root(&root->cg_item);
       root = root->cg_item.ci_group)
   ;
 }

 if (target_subsys != caller_subsys) {





  inode_lock(d_inode(root->cg_item.ci_dentry));





  subsys_sd = configfs_find_subsys_dentry(
    root->cg_item.ci_dentry->d_fsdata,
    &target_subsys->su_group.cg_item);
  if (!subsys_sd)
   goto out_root_unlock;
 } else {
  subsys_sd = target_subsys->su_group.cg_item.ci_dentry->d_fsdata;
 }


 ret = configfs_do_depend_item(subsys_sd->s_dentry, target);

 if (target_subsys != caller_subsys)
out_root_unlock:




  inode_unlock(d_inode(root->cg_item.ci_dentry));

 return ret;
}
