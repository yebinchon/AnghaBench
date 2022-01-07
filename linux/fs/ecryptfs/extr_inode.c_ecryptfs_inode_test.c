
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 void* ecryptfs_inode_to_lower (struct inode*) ;

__attribute__((used)) static int ecryptfs_inode_test(struct inode *inode, void *lower_inode)
{
 return ecryptfs_inode_to_lower(inode) == lower_inode;
}
