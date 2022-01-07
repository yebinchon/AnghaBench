
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int ecryptfs_inode_to_lower (struct inode*) ;
 int inode_permission (int ,int) ;

__attribute__((used)) static int
ecryptfs_permission(struct inode *inode, int mask)
{
 return inode_permission(ecryptfs_inode_to_lower(inode), mask);
}
