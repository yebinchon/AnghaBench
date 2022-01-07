
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {struct configfs_dirent* d_fsdata; } ;
struct configfs_dirent {int s_sibling; } ;


 int configfs_dirent_lock ;
 int configfs_put (struct configfs_dirent*) ;
 int list_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void configfs_remove_dirent(struct dentry *dentry)
{
 struct configfs_dirent *sd = dentry->d_fsdata;

 if (!sd)
  return;
 spin_lock(&configfs_dirent_lock);
 list_del_init(&sd->s_sibling);
 spin_unlock(&configfs_dirent_lock);
 configfs_put(sd);
}
