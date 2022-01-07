
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct inode {int dummy; } ;
struct TYPE_2__ {int flags; int io_tree; scalar_t__ defrag_bytes; } ;


 TYPE_1__* BTRFS_I (struct inode*) ;
 int BTRFS_INODE_NODATACOW ;
 int BTRFS_INODE_PREALLOC ;
 int EXTENT_DEFRAG ;
 scalar_t__ test_range_bit (int *,int ,int ,int ,int ,int *) ;

__attribute__((used)) static inline int need_force_cow(struct inode *inode, u64 start, u64 end)
{

 if (!(BTRFS_I(inode)->flags & BTRFS_INODE_NODATACOW) &&
     !(BTRFS_I(inode)->flags & BTRFS_INODE_PREALLOC))
  return 0;






 if (BTRFS_I(inode)->defrag_bytes &&
     test_range_bit(&BTRFS_I(inode)->io_tree, start, end,
      EXTENT_DEFRAG, 0, ((void*)0)))
  return 1;

 return 0;
}
