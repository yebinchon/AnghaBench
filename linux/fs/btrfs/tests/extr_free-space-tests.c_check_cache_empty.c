
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct btrfs_block_group_cache {TYPE_1__* free_space_ctl; } ;
struct TYPE_2__ {scalar_t__ free_space; } ;


 int EINVAL ;
 scalar_t__ btrfs_find_space_for_alloc (struct btrfs_block_group_cache*,int ,int,int ,scalar_t__*) ;
 int check_num_extents_and_bitmaps (struct btrfs_block_group_cache*,int ,int ) ;
 int test_err (char*,...) ;

__attribute__((used)) static int check_cache_empty(struct btrfs_block_group_cache *cache)
{
 u64 offset;
 u64 max_extent_size;





 if (cache->free_space_ctl->free_space != 0) {
  test_err("cache free space is not 0");
  return -EINVAL;
 }


 offset = btrfs_find_space_for_alloc(cache, 0, 4096, 0,
         &max_extent_size);
 if (offset != 0) {
  test_err("space allocation did not fail, returned offset: %llu",
    offset);
  return -EINVAL;
 }


 return check_num_extents_and_bitmaps(cache, 0, 0);
}
