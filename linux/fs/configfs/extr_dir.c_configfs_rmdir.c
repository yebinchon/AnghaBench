
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct module {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {struct dentry* d_parent; struct configfs_dirent* d_fsdata; } ;
struct TYPE_8__ {TYPE_1__* ci_type; } ;
struct TYPE_9__ {TYPE_2__ cg_item; } ;
struct configfs_subsystem {int su_mutex; TYPE_3__ su_group; } ;
struct configfs_fragment {int frag_dead; int frag_sem; } ;
struct configfs_dirent {int s_type; struct configfs_fragment* s_frag; scalar_t__ s_dependent_count; } ;
struct config_item {TYPE_4__* ci_type; } ;
struct TYPE_11__ {struct configfs_subsystem* cg_subsys; } ;
struct TYPE_10__ {struct module* ct_owner; } ;
struct TYPE_7__ {struct module* ct_owner; } ;


 int BUG_ON (int) ;
 int CONFIGFS_USET_DEFAULT ;
 int CONFIGFS_USET_DIR ;
 int EAGAIN ;
 int EBUSY ;
 int EINTR ;
 int EINVAL ;
 int EPERM ;
 int client_disconnect_notify (struct config_item*,struct config_item*) ;
 int client_drop_item (struct config_item*,struct config_item*) ;
 int config_item_put (struct config_item*) ;
 int configfs_detach_group (struct config_item*) ;
 int configfs_detach_item (struct config_item*) ;
 int configfs_detach_prep (struct dentry*,struct dentry**) ;
 int configfs_detach_rollback (struct dentry*) ;
 int configfs_dirent_lock ;
 struct config_item* configfs_get_config_item (struct dentry*) ;
 int configfs_symlink_mutex ;
 int d_inode (struct dentry*) ;
 scalar_t__ down_write_killable (int *) ;
 int dput (struct dentry*) ;
 int inode_lock (int ) ;
 int inode_unlock (int ) ;
 int module_put (struct module*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 TYPE_5__* to_config_group (struct config_item*) ;
 int unlink_group (TYPE_5__*) ;
 int unlink_obj (struct config_item*) ;
 int up_write (int *) ;

__attribute__((used)) static int configfs_rmdir(struct inode *dir, struct dentry *dentry)
{
 struct config_item *parent_item;
 struct config_item *item;
 struct configfs_subsystem *subsys;
 struct configfs_dirent *sd;
 struct configfs_fragment *frag;
 struct module *subsys_owner = ((void*)0), *dead_item_owner = ((void*)0);
 int ret;

 sd = dentry->d_fsdata;
 if (sd->s_type & CONFIGFS_USET_DEFAULT)
  return -EPERM;


 parent_item = configfs_get_config_item(dentry->d_parent);
 subsys = to_config_group(parent_item)->cg_subsys;
 BUG_ON(!subsys);

 if (!parent_item->ci_type) {
  config_item_put(parent_item);
  return -EINVAL;
 }


 BUG_ON(!subsys->su_group.cg_item.ci_type);
 subsys_owner = subsys->su_group.cg_item.ci_type->ct_owner;





 do {
  struct dentry *wait;

  mutex_lock(&configfs_symlink_mutex);
  spin_lock(&configfs_dirent_lock);





  ret = sd->s_dependent_count ? -EBUSY : 0;
  if (!ret) {
   ret = configfs_detach_prep(dentry, &wait);
   if (ret)
    configfs_detach_rollback(dentry);
  }
  spin_unlock(&configfs_dirent_lock);
  mutex_unlock(&configfs_symlink_mutex);

  if (ret) {
   if (ret != -EAGAIN) {
    config_item_put(parent_item);
    return ret;
   }


   inode_lock(d_inode(wait));
   inode_unlock(d_inode(wait));
   dput(wait);
  }
 } while (ret == -EAGAIN);

 frag = sd->s_frag;
 if (down_write_killable(&frag->frag_sem)) {
  spin_lock(&configfs_dirent_lock);
  configfs_detach_rollback(dentry);
  spin_unlock(&configfs_dirent_lock);
  return -EINTR;
 }
 frag->frag_dead = 1;
 up_write(&frag->frag_sem);


 item = configfs_get_config_item(dentry);


 config_item_put(parent_item);

 if (item->ci_type)
  dead_item_owner = item->ci_type->ct_owner;

 if (sd->s_type & CONFIGFS_USET_DIR) {
  configfs_detach_group(item);

  mutex_lock(&subsys->su_mutex);
  client_disconnect_notify(parent_item, item);
  unlink_group(to_config_group(item));
 } else {
  configfs_detach_item(item);

  mutex_lock(&subsys->su_mutex);
  client_disconnect_notify(parent_item, item);
  unlink_obj(item);
 }

 client_drop_item(parent_item, item);
 mutex_unlock(&subsys->su_mutex);


 config_item_put(item);

 module_put(dead_item_owner);
 module_put(subsys_owner);

 return 0;
}
