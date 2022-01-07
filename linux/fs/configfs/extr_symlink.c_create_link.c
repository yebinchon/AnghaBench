
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int dummy; } ;
struct configfs_dirent {int s_type; int s_links; } ;
struct config_item {TYPE_1__* ci_dentry; } ;
struct TYPE_2__ {struct configfs_dirent* d_fsdata; } ;


 int CONFIGFS_USET_DROPPING ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int configfs_create_link (struct configfs_dirent*,TYPE_1__*,struct dentry*,char*) ;
 int configfs_dirent_is_ready (struct configfs_dirent*) ;
 int configfs_dirent_lock ;
 int configfs_get (struct configfs_dirent*) ;
 int configfs_get_target_path (struct config_item*,struct config_item*,char*) ;
 int configfs_put (struct configfs_dirent*) ;
 int kfree (char*) ;
 char* kzalloc (int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int create_link(struct config_item *parent_item,
         struct config_item *item,
         struct dentry *dentry)
{
 struct configfs_dirent *target_sd = item->ci_dentry->d_fsdata;
 char *body;
 int ret;

 if (!configfs_dirent_is_ready(target_sd))
  return -ENOENT;

 body = kzalloc(PAGE_SIZE, GFP_KERNEL);
 if (!body)
  return -ENOMEM;

 configfs_get(target_sd);
 spin_lock(&configfs_dirent_lock);
 if (target_sd->s_type & CONFIGFS_USET_DROPPING) {
  spin_unlock(&configfs_dirent_lock);
  configfs_put(target_sd);
  kfree(body);
  return -ENOENT;
 }
 target_sd->s_links++;
 spin_unlock(&configfs_dirent_lock);
 ret = configfs_get_target_path(parent_item, item, body);
 if (!ret)
  ret = configfs_create_link(target_sd, parent_item->ci_dentry,
        dentry, body);
 if (ret) {
  spin_lock(&configfs_dirent_lock);
  target_sd->s_links--;
  spin_unlock(&configfs_dirent_lock);
  configfs_put(target_sd);
  kfree(body);
 }
 return ret;
}
