
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int ecryptfs_file_info_cache ;
 int ecryptfs_file_to_private (struct file*) ;
 int ecryptfs_put_lower_file (struct inode*) ;
 int kmem_cache_free (int ,int ) ;

__attribute__((used)) static int ecryptfs_release(struct inode *inode, struct file *file)
{
 ecryptfs_put_lower_file(inode);
 kmem_cache_free(ecryptfs_file_info_cache,
   ecryptfs_file_to_private(file));
 return 0;
}
