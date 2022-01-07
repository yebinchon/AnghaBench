
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
typedef int loff_t ;
struct TYPE_2__ {struct file* lower_file; } ;


 int EIO ;
 TYPE_1__* ecryptfs_inode_to_private (struct inode*) ;
 int kernel_read (struct file*,char*,size_t,int *) ;

int ecryptfs_read_lower(char *data, loff_t offset, size_t size,
   struct inode *ecryptfs_inode)
{
 struct file *lower_file;
 lower_file = ecryptfs_inode_to_private(ecryptfs_inode)->lower_file;
 if (!lower_file)
  return -EIO;
 return kernel_read(lower_file, data, size, &offset);
}
