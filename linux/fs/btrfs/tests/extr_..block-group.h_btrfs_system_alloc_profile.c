
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_fs_info {int dummy; } ;


 int BTRFS_BLOCK_GROUP_SYSTEM ;
 int btrfs_get_alloc_profile (struct btrfs_fs_info*,int ) ;

__attribute__((used)) static inline u64 btrfs_system_alloc_profile(struct btrfs_fs_info *fs_info)
{
 return btrfs_get_alloc_profile(fs_info, BTRFS_BLOCK_GROUP_SYSTEM);
}
