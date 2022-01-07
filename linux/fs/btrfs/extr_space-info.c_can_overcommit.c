
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_space_info {int flags; int total_bytes; } ;
struct btrfs_fs_info {int free_chunk_space; } ;
typedef enum btrfs_reserve_flush_enum { ____Placeholder_btrfs_reserve_flush_enum } btrfs_reserve_flush_enum ;


 int BTRFS_BLOCK_GROUP_DATA ;
 int BTRFS_RESERVE_FLUSH_ALL ;
 int atomic64_read (int *) ;
 int btrfs_bg_type_to_factor (int) ;
 int btrfs_metadata_alloc_profile (struct btrfs_fs_info*) ;
 int btrfs_space_info_used (struct btrfs_space_info*,int) ;
 int btrfs_system_alloc_profile (struct btrfs_fs_info*) ;
 int div_u64 (int,int) ;

__attribute__((used)) static int can_overcommit(struct btrfs_fs_info *fs_info,
     struct btrfs_space_info *space_info, u64 bytes,
     enum btrfs_reserve_flush_enum flush,
     bool system_chunk)
{
 u64 profile;
 u64 avail;
 u64 used;
 int factor;


 if (space_info->flags & BTRFS_BLOCK_GROUP_DATA)
  return 0;

 if (system_chunk)
  profile = btrfs_system_alloc_profile(fs_info);
 else
  profile = btrfs_metadata_alloc_profile(fs_info);

 used = btrfs_space_info_used(space_info, 1);
 avail = atomic64_read(&fs_info->free_chunk_space);







 factor = btrfs_bg_type_to_factor(profile);
 avail = div_u64(avail, factor);






 if (flush == BTRFS_RESERVE_FLUSH_ALL)
  avail >>= 3;
 else
  avail >>= 1;

 if (used + bytes < space_info->total_bytes + avail)
  return 1;
 return 0;
}
