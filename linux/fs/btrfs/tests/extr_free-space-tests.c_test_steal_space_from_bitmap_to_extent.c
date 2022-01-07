
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
typedef struct btrfs_free_space_op {int use_bitmap; int recalc_thresholds; } const btrfs_free_space_op ;
struct btrfs_block_group_cache {TYPE_1__* free_space_ctl; } ;
struct TYPE_2__ {int free_space; struct btrfs_free_space_op const* op; } ;


 int EINVAL ;
 int ENOENT ;
 int SZ_128K ;
 int SZ_128M ;
 int SZ_16M ;
 int SZ_1K ;
 int SZ_1M ;
 int SZ_256K ;
 int SZ_32M ;
 int SZ_512K ;
 int __btrfs_remove_free_space_cache (TYPE_1__*) ;
 int btrfs_add_free_space (struct btrfs_block_group_cache*,int,int) ;
 int btrfs_find_space_for_alloc (struct btrfs_block_group_cache*,int ,int,int ,int*) ;
 int btrfs_remove_free_space (struct btrfs_block_group_cache*,int,int) ;
 int check_cache_empty (struct btrfs_block_group_cache*) ;
 int check_num_extents_and_bitmaps (struct btrfs_block_group_cache*,int,int) ;
 int test_add_free_space_entry (struct btrfs_block_group_cache*,int,int,int) ;
 scalar_t__ test_check_exists (struct btrfs_block_group_cache*,int,int) ;
 int test_err (char*,...) ;
 int test_msg (char*) ;
 int test_use_bitmap ;

__attribute__((used)) static int
test_steal_space_from_bitmap_to_extent(struct btrfs_block_group_cache *cache,
           u32 sectorsize)
{
 int ret;
 u64 offset;
 u64 max_extent_size;
 const struct btrfs_free_space_op test_free_space_ops = {
  .recalc_thresholds = cache->free_space_ctl->op->recalc_thresholds,
  .use_bitmap = test_use_bitmap,
 };
 const struct btrfs_free_space_op *orig_free_space_ops;

 test_msg("running space stealing from bitmap to extent tests");
 orig_free_space_ops = cache->free_space_ctl->op;
 cache->free_space_ctl->op = &test_free_space_ops;




 ret = test_add_free_space_entry(cache, SZ_128M - SZ_256K, SZ_128K, 0);
 if (ret) {
  test_err("couldn't add extent entry %d", ret);
  return ret;
 }


 ret = test_add_free_space_entry(cache, SZ_128M + SZ_512K,
     SZ_128M - SZ_512K, 1);
 if (ret) {
  test_err("couldn't add bitmap entry %d", ret);
  return ret;
 }

 ret = check_num_extents_and_bitmaps(cache, 2, 1);
 if (ret)
  return ret;
 ret = btrfs_remove_free_space(cache,
          SZ_128M + 768 * SZ_1K,
          SZ_128M - 768 * SZ_1K);
 if (ret) {
  test_err("failed to free part of bitmap space %d", ret);
  return ret;
 }


 if (!test_check_exists(cache, SZ_128M - SZ_256K, SZ_128K)) {
  test_err("free space range missing");
  return -ENOENT;
 }
 if (!test_check_exists(cache, SZ_128M + SZ_512K, SZ_256K)) {
  test_err("free space range missing");
  return -ENOENT;
 }





 if (test_check_exists(cache, SZ_128M + 768 * SZ_1K,
         SZ_128M - 768 * SZ_1K)) {
  test_err("bitmap region not removed from space cache");
  return -EINVAL;
 }





 if (test_check_exists(cache, SZ_128M + SZ_256K, SZ_256K)) {
  test_err("invalid bitmap region marked as free");
  return -EINVAL;
 }





 if (test_check_exists(cache, SZ_128M, SZ_256K)) {
  test_err("invalid bitmap region marked as free");
  return -EINVAL;
 }






 ret = btrfs_add_free_space(cache, SZ_128M, SZ_512K);
 if (ret) {
  test_err("error adding free space: %d", ret);
  return ret;
 }

 if (!test_check_exists(cache, SZ_128M, SZ_512K)) {
  test_err("bitmap region not marked as free");
  return -ENOENT;
 }





 ret = check_num_extents_and_bitmaps(cache, 2, 1);
 if (ret)
  return ret;







 ret = btrfs_add_free_space(cache, SZ_128M + SZ_16M, sectorsize);
 if (ret) {
  test_err("error adding free space: %d", ret);
  return ret;
 }





 ret = check_num_extents_and_bitmaps(cache, 2, 1);
 if (ret)
  return ret;






 ret = btrfs_add_free_space(cache, SZ_128M - SZ_128K, SZ_128K);
 if (ret) {
  test_err("error adding free space: %d", ret);
  return ret;
 }

 if (!test_check_exists(cache, SZ_128M - SZ_128K, SZ_128K)) {
  test_err("extent region not marked as free");
  return -ENOENT;
 }





 ret = check_num_extents_and_bitmaps(cache, 2, 1);
 if (ret)
  return ret;
 if (!test_check_exists(cache, SZ_128M - SZ_256K, SZ_1M)) {
  test_err("expected region not marked as free");
  return -ENOENT;
 }

 if (cache->free_space_ctl->free_space != (SZ_1M + sectorsize)) {
  test_err("cache free space is not 1Mb + %u", sectorsize);
  return -EINVAL;
 }

 offset = btrfs_find_space_for_alloc(cache,
         0, SZ_1M, 0,
         &max_extent_size);
 if (offset != (SZ_128M - SZ_256K)) {
  test_err(
 "failed to allocate 1Mb from space cache, returned offset is: %llu",
    offset);
  return -EINVAL;
 }





 ret = check_num_extents_and_bitmaps(cache, 1, 1);
 if (ret)
  return ret;

 if (cache->free_space_ctl->free_space != sectorsize) {
  test_err("cache free space is not %u", sectorsize);
  return -EINVAL;
 }

 offset = btrfs_find_space_for_alloc(cache,
         0, sectorsize, 0,
         &max_extent_size);
 if (offset != (SZ_128M + SZ_16M)) {
  test_err("failed to allocate %u, returned offset : %llu",
    sectorsize, offset);
  return -EINVAL;
 }

 ret = check_cache_empty(cache);
 if (ret)
  return ret;

 __btrfs_remove_free_space_cache(cache->free_space_ctl);
 ret = test_add_free_space_entry(cache, SZ_128M + SZ_128K, SZ_128K, 0);
 if (ret) {
  test_err("couldn't add extent entry %d", ret);
  return ret;
 }


 ret = test_add_free_space_entry(cache, 0, SZ_128M - SZ_512K, 1);
 if (ret) {
  test_err("couldn't add bitmap entry %d", ret);
  return ret;
 }

 ret = check_num_extents_and_bitmaps(cache, 2, 1);
 if (ret)
  return ret;
 ret = btrfs_remove_free_space(cache, 0, SZ_128M - 768 * SZ_1K);
 if (ret) {
  test_err("failed to free part of bitmap space %d", ret);
  return ret;
 }


 if (!test_check_exists(cache, SZ_128M + SZ_128K, SZ_128K)) {
  test_err("free space range missing");
  return -ENOENT;
 }
 if (!test_check_exists(cache, SZ_128M - 768 * SZ_1K, SZ_256K)) {
  test_err("free space range missing");
  return -ENOENT;
 }





 if (test_check_exists(cache, 0, SZ_128M - 768 * SZ_1K)) {
  test_err("bitmap region not removed from space cache");
  return -EINVAL;
 }





 if (test_check_exists(cache, SZ_128M - SZ_512K, SZ_512K)) {
  test_err("invalid bitmap region marked as free");
  return -EINVAL;
 }






 ret = btrfs_add_free_space(cache, SZ_128M - SZ_512K, SZ_512K);
 if (ret) {
  test_err("error adding free space: %d", ret);
  return ret;
 }

 if (!test_check_exists(cache, SZ_128M - SZ_512K, SZ_512K)) {
  test_err("bitmap region not marked as free");
  return -ENOENT;
 }





 ret = check_num_extents_and_bitmaps(cache, 2, 1);
 if (ret)
  return ret;







 ret = btrfs_add_free_space(cache, SZ_32M, 2 * sectorsize);
 if (ret) {
  test_err("error adding free space: %d", ret);
  return ret;
 }






 ret = btrfs_add_free_space(cache, SZ_128M, SZ_128K);
 if (ret) {
  test_err("error adding free space: %d", ret);
  return ret;
 }

 if (!test_check_exists(cache, SZ_128M, SZ_128K)) {
  test_err("extent region not marked as free");
  return -ENOENT;
 }





 ret = check_num_extents_and_bitmaps(cache, 2, 1);
 if (ret)
  return ret;
 if (!test_check_exists(cache, SZ_128M - 768 * SZ_1K, SZ_1M)) {
  test_err("expected region not marked as free");
  return -ENOENT;
 }

 if (cache->free_space_ctl->free_space != (SZ_1M + 2 * sectorsize)) {
  test_err("cache free space is not 1Mb + %u", 2 * sectorsize);
  return -EINVAL;
 }

 offset = btrfs_find_space_for_alloc(cache, 0, SZ_1M, 0,
         &max_extent_size);
 if (offset != (SZ_128M - 768 * SZ_1K)) {
  test_err(
 "failed to allocate 1Mb from space cache, returned offset is: %llu",
    offset);
  return -EINVAL;
 }





 ret = check_num_extents_and_bitmaps(cache, 1, 1);
 if (ret)
  return ret;

 if (cache->free_space_ctl->free_space != 2 * sectorsize) {
  test_err("cache free space is not %u", 2 * sectorsize);
  return -EINVAL;
 }

 offset = btrfs_find_space_for_alloc(cache,
         0, 2 * sectorsize, 0,
         &max_extent_size);
 if (offset != SZ_32M) {
  test_err("failed to allocate %u, offset: %llu",
    2 * sectorsize, offset);
  return -EINVAL;
 }

 ret = check_cache_empty(cache);
 if (ret)
  return ret;

 cache->free_space_ctl->op = orig_free_space_ops;
 __btrfs_remove_free_space_cache(cache->free_space_ctl);

 return 0;
}
