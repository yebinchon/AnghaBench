
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {struct dentry* dentry; } ;
struct file {int private_data; TYPE_1__ f_path; } ;
struct dentry {struct configfs_dirent* d_fsdata; } ;
struct configfs_dirent {int dummy; } ;


 int ENOENT ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 scalar_t__ configfs_dirent_is_ready (struct configfs_dirent*) ;
 int configfs_new_dirent (struct configfs_dirent*,int *,int ,int *) ;
 int d_inode (struct dentry*) ;
 int inode_lock (int ) ;
 int inode_unlock (int ) ;

__attribute__((used)) static int configfs_dir_open(struct inode *inode, struct file *file)
{
 struct dentry * dentry = file->f_path.dentry;
 struct configfs_dirent * parent_sd = dentry->d_fsdata;
 int err;

 inode_lock(d_inode(dentry));




 err = -ENOENT;
 if (configfs_dirent_is_ready(parent_sd)) {
  file->private_data = configfs_new_dirent(parent_sd, ((void*)0), 0, ((void*)0));
  if (IS_ERR(file->private_data))
   err = PTR_ERR(file->private_data);
  else
   err = 0;
 }
 inode_unlock(d_inode(dentry));

 return err;
}
