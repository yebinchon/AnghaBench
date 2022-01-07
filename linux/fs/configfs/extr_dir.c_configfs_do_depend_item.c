
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int dummy; } ;
struct configfs_dirent {int s_dependent_count; } ;
struct config_item {TYPE_1__* ci_dentry; } ;
struct TYPE_2__ {struct configfs_dirent* d_fsdata; } ;


 int configfs_depend_prep (struct dentry*,struct config_item*) ;
 int configfs_dirent_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int configfs_do_depend_item(struct dentry *subsys_dentry,
       struct config_item *target)
{
 struct configfs_dirent *p;
 int ret;

 spin_lock(&configfs_dirent_lock);

 ret = configfs_depend_prep(subsys_dentry, target);
 if (ret)
  goto out_unlock_dirent_lock;





 p = target->ci_dentry->d_fsdata;
 p->s_dependent_count += 1;

out_unlock_dirent_lock:
 spin_unlock(&configfs_dirent_lock);

 return ret;
}
