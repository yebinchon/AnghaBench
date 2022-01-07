
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_block_group_cache {int dummy; } ;


 int DISCARD ;
 int ENOSPC ;
 int btrfs_add_free_space (struct btrfs_block_group_cache*,int ,int ) ;
 int btrfs_discard_extent (struct btrfs_fs_info*,int ,int ,int *) ;
 int btrfs_err (struct btrfs_fs_info*,char*,int ) ;
 int btrfs_free_reserved_bytes (struct btrfs_block_group_cache*,int ,int) ;
 struct btrfs_block_group_cache* btrfs_lookup_block_group (struct btrfs_fs_info*,int ) ;
 int btrfs_put_block_group (struct btrfs_block_group_cache*) ;
 scalar_t__ btrfs_test_opt (struct btrfs_fs_info*,int ) ;
 int pin_down_extent (struct btrfs_block_group_cache*,int ,int ,int) ;
 int trace_btrfs_reserved_extent_free (struct btrfs_fs_info*,int ,int ) ;

__attribute__((used)) static int __btrfs_free_reserved_extent(struct btrfs_fs_info *fs_info,
     u64 start, u64 len,
     int pin, int delalloc)
{
 struct btrfs_block_group_cache *cache;
 int ret = 0;

 cache = btrfs_lookup_block_group(fs_info, start);
 if (!cache) {
  btrfs_err(fs_info, "Unable to find block group for %llu",
     start);
  return -ENOSPC;
 }

 if (pin)
  pin_down_extent(cache, start, len, 1);
 else {
  if (btrfs_test_opt(fs_info, DISCARD))
   ret = btrfs_discard_extent(fs_info, start, len, ((void*)0));
  btrfs_add_free_space(cache, start, len);
  btrfs_free_reserved_bytes(cache, len, delalloc);
  trace_btrfs_reserved_extent_free(fs_info, start, len);
 }

 btrfs_put_block_group(cache);
 return ret;
}
