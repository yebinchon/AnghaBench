
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct dentry {struct configfs_dirent* d_fsdata; } ;
struct configfs_dirent {int s_frag; } ;
struct configfs_attribute {int ca_mode; } ;
struct config_item {struct dentry* ci_dentry; } ;


 int CONFIGFS_ITEM_ATTR ;
 int I_MUTEX_NORMAL ;
 int S_IALLUGO ;
 int S_IFREG ;
 int configfs_make_dirent (struct configfs_dirent*,int *,void*,int,int ,int ) ;
 int d_inode (struct dentry*) ;
 int inode_lock_nested (int ,int ) ;
 int inode_unlock (int ) ;

int configfs_create_file(struct config_item * item, const struct configfs_attribute * attr)
{
 struct dentry *dir = item->ci_dentry;
 struct configfs_dirent *parent_sd = dir->d_fsdata;
 umode_t mode = (attr->ca_mode & S_IALLUGO) | S_IFREG;
 int error = 0;

 inode_lock_nested(d_inode(dir), I_MUTEX_NORMAL);
 error = configfs_make_dirent(parent_sd, ((void*)0), (void *) attr, mode,
         CONFIGFS_ITEM_ATTR, parent_sd->s_frag);
 inode_unlock(d_inode(dir));

 return error;
}
