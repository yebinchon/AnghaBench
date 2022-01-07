
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 scalar_t__ BTRFS_BTREE_INODE_OBJECTID ;
 int BTRFS_I (struct inode*) ;
 scalar_t__ btrfs_ino (int ) ;

__attribute__((used)) static inline bool is_data_inode(struct inode *inode)
{
 return btrfs_ino(BTRFS_I(inode)) != BTRFS_BTREE_INODE_OBJECTID;
}
