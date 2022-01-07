
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {struct dentry* dentry; } ;
struct file {struct configfs_dirent* private_data; TYPE_1__ f_path; } ;
struct dentry {int dummy; } ;
struct configfs_dirent {int s_sibling; } ;


 int configfs_dirent_lock ;
 int d_inode (struct dentry*) ;
 int inode_lock (int ) ;
 int inode_unlock (int ) ;
 int list_del_init (int *) ;
 int release_configfs_dirent (struct configfs_dirent*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int configfs_dir_close(struct inode *inode, struct file *file)
{
 struct dentry * dentry = file->f_path.dentry;
 struct configfs_dirent * cursor = file->private_data;

 inode_lock(d_inode(dentry));
 spin_lock(&configfs_dirent_lock);
 list_del_init(&cursor->s_sibling);
 spin_unlock(&configfs_dirent_lock);
 inode_unlock(d_inode(dentry));

 release_configfs_dirent(cursor);

 return 0;
}
