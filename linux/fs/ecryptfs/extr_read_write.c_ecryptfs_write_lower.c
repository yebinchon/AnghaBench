
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_2__ {struct file* lower_file; } ;


 int EIO ;
 TYPE_1__* ecryptfs_inode_to_private (struct inode*) ;
 int kernel_write (struct file*,char*,size_t,int *) ;
 int mark_inode_dirty_sync (struct inode*) ;

int ecryptfs_write_lower(struct inode *ecryptfs_inode, char *data,
    loff_t offset, size_t size)
{
 struct file *lower_file;
 ssize_t rc;

 lower_file = ecryptfs_inode_to_private(ecryptfs_inode)->lower_file;
 if (!lower_file)
  return -EIO;
 rc = kernel_write(lower_file, data, size, &offset);
 mark_inode_dirty_sync(ecryptfs_inode);
 return rc;
}
