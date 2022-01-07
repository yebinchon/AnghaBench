
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int loff_t ;


 int ecryptfs_file_to_lower (struct file*) ;
 int vfs_llseek (int ,int ,int) ;

__attribute__((used)) static loff_t ecryptfs_dir_llseek(struct file *file, loff_t offset, int whence)
{
 return vfs_llseek(ecryptfs_file_to_lower(file), offset, whence);
}
