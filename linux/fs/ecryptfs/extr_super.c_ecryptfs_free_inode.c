
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ecryptfs_inode_info {int dummy; } ;


 int ecryptfs_inode_info_cache ;
 struct ecryptfs_inode_info* ecryptfs_inode_to_private (struct inode*) ;
 int kmem_cache_free (int ,struct ecryptfs_inode_info*) ;

__attribute__((used)) static void ecryptfs_free_inode(struct inode *inode)
{
 struct ecryptfs_inode_info *inode_info;
 inode_info = ecryptfs_inode_to_private(inode);

 kmem_cache_free(ecryptfs_inode_info_cache, inode_info);
}
