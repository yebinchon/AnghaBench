
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {struct inode* wii_inode; } ;


 TYPE_1__* ecryptfs_inode_to_private (struct inode*) ;

__attribute__((used)) static inline void
ecryptfs_set_inode_lower(struct inode *inode, struct inode *lower_inode)
{
 ecryptfs_inode_to_private(inode)->wii_inode = lower_inode;
}
