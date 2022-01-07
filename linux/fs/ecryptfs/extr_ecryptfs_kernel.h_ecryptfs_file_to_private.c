
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct ecryptfs_file_info* private_data; } ;
struct ecryptfs_file_info {int dummy; } ;



__attribute__((used)) static inline struct ecryptfs_file_info *
ecryptfs_file_to_private(struct file *file)
{
 return file->private_data;
}
