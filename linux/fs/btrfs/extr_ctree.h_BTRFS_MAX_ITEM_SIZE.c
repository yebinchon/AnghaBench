
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct btrfs_item {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;


 scalar_t__ BTRFS_LEAF_DATA_SIZE (struct btrfs_fs_info const*) ;

__attribute__((used)) static inline u32 BTRFS_MAX_ITEM_SIZE(const struct btrfs_fs_info *info)
{
 return BTRFS_LEAF_DATA_SIZE(info) - sizeof(struct btrfs_item);
}
