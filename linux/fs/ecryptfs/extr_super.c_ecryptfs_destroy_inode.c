
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ecryptfs_inode_info {int crypt_stat; int lower_file; } ;


 int BUG_ON (int ) ;
 int ecryptfs_destroy_crypt_stat (int *) ;
 struct ecryptfs_inode_info* ecryptfs_inode_to_private (struct inode*) ;

__attribute__((used)) static void ecryptfs_destroy_inode(struct inode *inode)
{
 struct ecryptfs_inode_info *inode_info;

 inode_info = ecryptfs_inode_to_private(inode);
 BUG_ON(inode_info->lower_file);
 ecryptfs_destroy_crypt_stat(&inode_info->crypt_stat);
}
