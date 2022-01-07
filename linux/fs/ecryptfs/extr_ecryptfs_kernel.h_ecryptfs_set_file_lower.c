
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {scalar_t__ private_data; } ;
struct ecryptfs_file_info {struct file* wfi_file; } ;



__attribute__((used)) static inline void
ecryptfs_set_file_lower(struct file *file, struct file *lower_file)
{
 ((struct ecryptfs_file_info *)file->private_data)->wfi_file =
  lower_file;
}
