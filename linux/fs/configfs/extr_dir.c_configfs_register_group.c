
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int d_fsdata; } ;
struct configfs_subsystem {int su_mutex; } ;
struct configfs_fragment {int dummy; } ;
struct TYPE_2__ {struct dentry* ci_dentry; } ;
struct config_group {TYPE_1__ cg_item; struct configfs_subsystem* cg_subsys; } ;


 int ENOMEM ;
 int I_MUTEX_PARENT ;
 int configfs_dir_set_ready (int ) ;
 int configfs_dirent_lock ;
 int create_default_group (struct config_group*,struct config_group*,struct configfs_fragment*) ;
 int d_inode (struct dentry*) ;
 int inode_lock_nested (int ,int ) ;
 int inode_unlock (int ) ;
 int link_group (struct config_group*,struct config_group*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct configfs_fragment* new_fragment () ;
 int put_fragment (struct configfs_fragment*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int unlink_group (struct config_group*) ;

int configfs_register_group(struct config_group *parent_group,
       struct config_group *group)
{
 struct configfs_subsystem *subsys = parent_group->cg_subsys;
 struct dentry *parent;
 struct configfs_fragment *frag;
 int ret;

 frag = new_fragment();
 if (!frag)
  return -ENOMEM;

 mutex_lock(&subsys->su_mutex);
 link_group(parent_group, group);
 mutex_unlock(&subsys->su_mutex);

 parent = parent_group->cg_item.ci_dentry;

 inode_lock_nested(d_inode(parent), I_MUTEX_PARENT);
 ret = create_default_group(parent_group, group, frag);
 if (ret)
  goto err_out;

 spin_lock(&configfs_dirent_lock);
 configfs_dir_set_ready(group->cg_item.ci_dentry->d_fsdata);
 spin_unlock(&configfs_dirent_lock);
 inode_unlock(d_inode(parent));
 put_fragment(frag);
 return 0;
err_out:
 inode_unlock(d_inode(parent));
 mutex_lock(&subsys->su_mutex);
 unlink_group(group);
 mutex_unlock(&subsys->su_mutex);
 put_fragment(frag);
 return ret;
}
