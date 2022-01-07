
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct path {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {scalar_t__ d_inode; int d_sb; TYPE_2__* d_parent; } ;
struct configfs_dirent {int dummy; } ;
struct config_item_type {TYPE_1__* ct_item_ops; } ;
struct config_item {struct config_item_type* ci_type; } ;
struct TYPE_4__ {struct configfs_dirent* d_fsdata; } ;
struct TYPE_3__ {int (* allow_link ) (struct config_item*,struct config_item*) ;int (* drop_link ) (struct config_item*,struct config_item*) ;} ;


 int EEXIST ;
 int ENOENT ;
 int EPERM ;
 int MAY_EXEC ;
 int MAY_WRITE ;
 int config_item_put (struct config_item*) ;
 int configfs_dirent_is_ready (struct configfs_dirent*) ;
 struct config_item* configfs_get_config_item (TYPE_2__*) ;
 int configfs_symlink_mutex ;
 int create_link (struct config_item*,struct config_item*,struct dentry*) ;
 scalar_t__ d_unhashed (struct dentry*) ;
 int get_target (char const*,struct path*,struct config_item**,int ) ;
 int inode_lock (struct inode*) ;
 int inode_permission (struct inode*,int) ;
 int inode_unlock (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int path_put (struct path*) ;
 int stub1 (struct config_item*,struct config_item*) ;
 int stub2 (struct config_item*,struct config_item*) ;

int configfs_symlink(struct inode *dir, struct dentry *dentry, const char *symname)
{
 int ret;
 struct path path;
 struct configfs_dirent *sd;
 struct config_item *parent_item;
 struct config_item *target_item = ((void*)0);
 const struct config_item_type *type;

 sd = dentry->d_parent->d_fsdata;




 if (!configfs_dirent_is_ready(sd))
  return -ENOENT;

 parent_item = configfs_get_config_item(dentry->d_parent);
 type = parent_item->ci_type;

 ret = -EPERM;
 if (!type || !type->ct_item_ops ||
     !type->ct_item_ops->allow_link)
  goto out_put;
 inode_unlock(dir);
 ret = get_target(symname, &path, &target_item, dentry->d_sb);
 inode_lock(dir);
 if (ret)
  goto out_put;

 if (dentry->d_inode || d_unhashed(dentry))
  ret = -EEXIST;
 else
  ret = inode_permission(dir, MAY_WRITE | MAY_EXEC);
 if (!ret)
  ret = type->ct_item_ops->allow_link(parent_item, target_item);
 if (!ret) {
  mutex_lock(&configfs_symlink_mutex);
  ret = create_link(parent_item, target_item, dentry);
  mutex_unlock(&configfs_symlink_mutex);
  if (ret && type->ct_item_ops->drop_link)
   type->ct_item_ops->drop_link(parent_item,
           target_item);
 }

 config_item_put(target_item);
 path_put(&path);

out_put:
 config_item_put(parent_item);
 return ret;
}
