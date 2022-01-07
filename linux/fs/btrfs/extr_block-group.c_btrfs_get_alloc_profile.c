
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_fs_info {int dummy; } ;


 int get_alloc_profile (struct btrfs_fs_info*,int ) ;

u64 btrfs_get_alloc_profile(struct btrfs_fs_info *fs_info, u64 orig_flags)
{
 return get_alloc_profile(fs_info, orig_flags);
}
