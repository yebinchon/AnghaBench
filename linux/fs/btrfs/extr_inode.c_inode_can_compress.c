
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 TYPE_1__* BTRFS_I (struct inode*) ;
 int BTRFS_INODE_NODATACOW ;
 int BTRFS_INODE_NODATASUM ;

__attribute__((used)) static inline bool inode_can_compress(struct inode *inode)
{
 if (BTRFS_I(inode)->flags & BTRFS_INODE_NODATACOW ||
     BTRFS_I(inode)->flags & BTRFS_INODE_NODATASUM)
  return 0;
 return 1;
}
