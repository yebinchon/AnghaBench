
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_lock; struct configfs_dirent* d_fsdata; } ;
struct configfs_dirent {int s_element; } ;
struct config_item {int dummy; } ;


 struct config_item* config_item_get (int ) ;
 int d_unhashed (struct dentry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline struct config_item *configfs_get_config_item(struct dentry *dentry)
{
 struct config_item * item = ((void*)0);

 spin_lock(&dentry->d_lock);
 if (!d_unhashed(dentry)) {
  struct configfs_dirent * sd = dentry->d_fsdata;
  item = config_item_get(sd->s_element);
 }
 spin_unlock(&dentry->d_lock);

 return item;
}
