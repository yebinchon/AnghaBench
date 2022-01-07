
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct dentry {int d_inode; struct configfs_dirent* d_fsdata; } ;
struct configfs_dirent {int s_frag; } ;
struct TYPE_2__ {int ca_mode; } ;
struct configfs_bin_attribute {TYPE_1__ cb_attr; } ;
struct config_item {struct dentry* ci_dentry; } ;


 int CONFIGFS_ITEM_BIN_ATTR ;
 int I_MUTEX_NORMAL ;
 int S_IALLUGO ;
 int S_IFREG ;
 int configfs_make_dirent (struct configfs_dirent*,int *,void*,int,int ,int ) ;
 int inode_lock_nested (int ,int ) ;
 int inode_unlock (int ) ;

int configfs_create_bin_file(struct config_item *item,
  const struct configfs_bin_attribute *bin_attr)
{
 struct dentry *dir = item->ci_dentry;
 struct configfs_dirent *parent_sd = dir->d_fsdata;
 umode_t mode = (bin_attr->cb_attr.ca_mode & S_IALLUGO) | S_IFREG;
 int error = 0;

 inode_lock_nested(dir->d_inode, I_MUTEX_NORMAL);
 error = configfs_make_dirent(parent_sd, ((void*)0), (void *) bin_attr, mode,
         CONFIGFS_ITEM_BIN_ATTR, parent_sd->s_frag);
 inode_unlock(dir->d_inode);

 return error;
}
