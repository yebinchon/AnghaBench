
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct btrfs_fs_info {int dummy; } ;


 scalar_t__ BTRFS_FILE_EXTENT_INLINE_DATA_START ;
 scalar_t__ BTRFS_MAX_ITEM_SIZE (struct btrfs_fs_info const*) ;

__attribute__((used)) static inline u32 BTRFS_MAX_INLINE_DATA_SIZE(const struct btrfs_fs_info *info)
{
 return BTRFS_MAX_ITEM_SIZE(info) -
        BTRFS_FILE_EXTENT_INLINE_DATA_START;
}
