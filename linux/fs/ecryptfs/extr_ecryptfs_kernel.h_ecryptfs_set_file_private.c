
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct ecryptfs_file_info* private_data; } ;
struct ecryptfs_file_info {int dummy; } ;



__attribute__((used)) static inline void
ecryptfs_set_file_private(struct file *file,
     struct ecryptfs_file_info *file_info)
{
 file->private_data = file_info;
}
