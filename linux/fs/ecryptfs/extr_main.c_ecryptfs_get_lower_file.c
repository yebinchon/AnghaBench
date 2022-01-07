
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ecryptfs_inode_info {int lower_file_mutex; int lower_file_count; int lower_file; } ;
struct dentry {int dummy; } ;


 int EINVAL ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int atomic_inc_return (int *) ;
 int atomic_set (int *,int ) ;
 int ecryptfs_init_lower_file (struct dentry*,int *) ;
 struct ecryptfs_inode_info* ecryptfs_inode_to_private (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int ecryptfs_get_lower_file(struct dentry *dentry, struct inode *inode)
{
 struct ecryptfs_inode_info *inode_info;
 int count, rc = 0;

 inode_info = ecryptfs_inode_to_private(inode);
 mutex_lock(&inode_info->lower_file_mutex);
 count = atomic_inc_return(&inode_info->lower_file_count);
 if (WARN_ON_ONCE(count < 1))
  rc = -EINVAL;
 else if (count == 1) {
  rc = ecryptfs_init_lower_file(dentry,
           &inode_info->lower_file);
  if (rc)
   atomic_set(&inode_info->lower_file_count, 0);
 }
 mutex_unlock(&inode_info->lower_file_mutex);
 return rc;
}
