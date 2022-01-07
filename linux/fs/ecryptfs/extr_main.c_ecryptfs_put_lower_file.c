
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mapping; } ;
struct ecryptfs_inode_info {int lower_file_mutex; int * lower_file; int lower_file_count; } ;


 scalar_t__ atomic_dec_and_mutex_lock (int *,int *) ;
 struct ecryptfs_inode_info* ecryptfs_inode_to_private (struct inode*) ;
 int filemap_write_and_wait (int ) ;
 int fput (int *) ;
 int mutex_unlock (int *) ;

void ecryptfs_put_lower_file(struct inode *inode)
{
 struct ecryptfs_inode_info *inode_info;

 inode_info = ecryptfs_inode_to_private(inode);
 if (atomic_dec_and_mutex_lock(&inode_info->lower_file_count,
          &inode_info->lower_file_mutex)) {
  filemap_write_and_wait(inode->i_mapping);
  fput(inode_info->lower_file);
  inode_info->lower_file = ((void*)0);
  mutex_unlock(&inode_info->lower_file_mutex);
 }
}
