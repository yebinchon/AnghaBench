
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_space_info {int flags; } ;


 int BTRFS_BLOCK_GROUP_DATA ;
 int BTRFS_BLOCK_GROUP_METADATA ;

__attribute__((used)) static inline bool btrfs_mixed_space_info(struct btrfs_space_info *space_info)
{
 return ((space_info->flags & BTRFS_BLOCK_GROUP_METADATA) &&
  (space_info->flags & BTRFS_BLOCK_GROUP_DATA));
}
