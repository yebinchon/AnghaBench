
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct dentry {int d_parent; struct configfs_dirent* d_fsdata; } ;
struct configfs_dirent {int s_type; int s_links; struct configfs_dirent* s_element; int s_sibling; } ;
struct config_item_type {TYPE_1__* ct_item_ops; } ;
struct config_item {struct config_item_type* ci_type; } ;
struct TYPE_2__ {int (* drop_link ) (struct config_item*,struct configfs_dirent*) ;} ;


 int CONFIGFS_ITEM_LINK ;
 int EPERM ;
 int config_item_put (struct config_item*) ;
 int configfs_dirent_lock ;
 int configfs_drop_dentry (struct configfs_dirent*,int ) ;
 struct config_item* configfs_get_config_item (int ) ;
 int configfs_put (struct configfs_dirent*) ;
 int dput (struct dentry*) ;
 int list_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct config_item*,struct configfs_dirent*) ;

int configfs_unlink(struct inode *dir, struct dentry *dentry)
{
 struct configfs_dirent *sd = dentry->d_fsdata, *target_sd;
 struct config_item *parent_item;
 const struct config_item_type *type;
 int ret;

 ret = -EPERM;
 if (!(sd->s_type & CONFIGFS_ITEM_LINK))
  goto out;

 target_sd = sd->s_element;

 parent_item = configfs_get_config_item(dentry->d_parent);
 type = parent_item->ci_type;

 spin_lock(&configfs_dirent_lock);
 list_del_init(&sd->s_sibling);
 spin_unlock(&configfs_dirent_lock);
 configfs_drop_dentry(sd, dentry->d_parent);
 dput(dentry);
 configfs_put(sd);






 if (type && type->ct_item_ops &&
     type->ct_item_ops->drop_link)
  type->ct_item_ops->drop_link(parent_item,
            target_sd->s_element);

 spin_lock(&configfs_dirent_lock);
 target_sd->s_links--;
 spin_unlock(&configfs_dirent_lock);
 configfs_put(target_sd);

 config_item_put(parent_item);

 ret = 0;

out:
 return ret;
}
