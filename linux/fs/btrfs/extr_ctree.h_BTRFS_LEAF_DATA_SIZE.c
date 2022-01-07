
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct btrfs_header {int dummy; } ;
struct btrfs_fs_info {scalar_t__ nodesize; } ;



__attribute__((used)) static inline u32 BTRFS_LEAF_DATA_SIZE(const struct btrfs_fs_info *info)
{

 return info->nodesize - sizeof(struct btrfs_header);
}
