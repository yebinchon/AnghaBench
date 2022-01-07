
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_block_group_cache {int free_space_ctl; } ;


 int SZ_1M ;
 int SZ_2M ;
 int SZ_4M ;
 int __btrfs_remove_free_space_cache (int ) ;
 int btrfs_add_free_space (struct btrfs_block_group_cache*,int ,int) ;
 int btrfs_remove_free_space (struct btrfs_block_group_cache*,int,int) ;
 scalar_t__ test_check_exists (struct btrfs_block_group_cache*,int,int) ;
 int test_err (char*,...) ;
 int test_msg (char*) ;

__attribute__((used)) static int test_extents(struct btrfs_block_group_cache *cache)
{
 int ret = 0;

 test_msg("running extent only tests");


 ret = btrfs_add_free_space(cache, 0, SZ_4M);
 if (ret) {
  test_err("error adding initial extents %d", ret);
  return ret;
 }

 ret = btrfs_remove_free_space(cache, 0, SZ_4M);
 if (ret) {
  test_err("error removing extent %d", ret);
  return ret;
 }

 if (test_check_exists(cache, 0, SZ_4M)) {
  test_err("full remove left some lingering space");
  return -1;
 }


 ret = btrfs_add_free_space(cache, 0, SZ_4M);
 if (ret) {
  test_err("error adding half extent %d", ret);
  return ret;
 }

 ret = btrfs_remove_free_space(cache, 3 * SZ_1M, SZ_1M);
 if (ret) {
  test_err("error removing tail end %d", ret);
  return ret;
 }

 ret = btrfs_remove_free_space(cache, 0, SZ_1M);
 if (ret) {
  test_err("error removing front end %d", ret);
  return ret;
 }

 ret = btrfs_remove_free_space(cache, SZ_2M, 4096);
 if (ret) {
  test_err("error removing middle piece %d", ret);
  return ret;
 }

 if (test_check_exists(cache, 0, SZ_1M)) {
  test_err("still have space at the front");
  return -1;
 }

 if (test_check_exists(cache, SZ_2M, 4096)) {
  test_err("still have space in the middle");
  return -1;
 }

 if (test_check_exists(cache, 3 * SZ_1M, SZ_1M)) {
  test_err("still have space at the end");
  return -1;
 }


 __btrfs_remove_free_space_cache(cache->free_space_ctl);

 return 0;
}
