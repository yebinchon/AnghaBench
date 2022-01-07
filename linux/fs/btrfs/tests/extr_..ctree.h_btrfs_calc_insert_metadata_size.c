
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_fs_info {scalar_t__ nodesize; } ;


 int BTRFS_MAX_LEVEL ;

__attribute__((used)) static inline u64 btrfs_calc_insert_metadata_size(struct btrfs_fs_info *fs_info,
        unsigned num_items)
{
 return (u64)fs_info->nodesize * BTRFS_MAX_LEVEL * 2 * num_items;
}
