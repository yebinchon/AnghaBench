
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int loff_t ;


 int ecryptfs_file_to_lower (struct file*) ;
 int file_write_and_wait (struct file*) ;
 int vfs_fsync (int ,int) ;

__attribute__((used)) static int
ecryptfs_fsync(struct file *file, loff_t start, loff_t end, int datasync)
{
 int rc;

 rc = file_write_and_wait(file);
 if (rc)
  return rc;

 return vfs_fsync(ecryptfs_file_to_lower(file), datasync);
}
