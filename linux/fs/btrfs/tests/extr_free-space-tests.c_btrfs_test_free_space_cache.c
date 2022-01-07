
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_block_group_cache {int dummy; } ;
struct TYPE_2__ {struct btrfs_root* extent_root; } ;


 int BITS_PER_BITMAP ;
 int ENOMEM ;
 scalar_t__ IS_ERR (struct btrfs_root*) ;
 scalar_t__ PAGE_SIZE ;
 int PTR_ERR (struct btrfs_root*) ;
 int TEST_ALLOC_BLOCK_GROUP ;
 int TEST_ALLOC_FS_INFO ;
 int TEST_ALLOC_ROOT ;
 struct btrfs_block_group_cache* btrfs_alloc_dummy_block_group (struct btrfs_fs_info*,scalar_t__) ;
 struct btrfs_fs_info* btrfs_alloc_dummy_fs_info (int,int) ;
 struct btrfs_root* btrfs_alloc_dummy_root (struct btrfs_fs_info*) ;
 int btrfs_free_dummy_block_group (struct btrfs_block_group_cache*) ;
 int btrfs_free_dummy_fs_info (struct btrfs_fs_info*) ;
 int btrfs_free_dummy_root (struct btrfs_root*) ;
 int test_bitmaps (struct btrfs_block_group_cache*,int) ;
 int test_bitmaps_and_extents (struct btrfs_block_group_cache*,int) ;
 int test_extents (struct btrfs_block_group_cache*) ;
 int test_msg (char*) ;
 int test_std_err (int ) ;
 int test_steal_space_from_bitmap_to_extent (struct btrfs_block_group_cache*,int) ;

int btrfs_test_free_space_cache(u32 sectorsize, u32 nodesize)
{
 struct btrfs_fs_info *fs_info;
 struct btrfs_block_group_cache *cache;
 struct btrfs_root *root = ((void*)0);
 int ret = -ENOMEM;

 test_msg("running btrfs free space cache tests");
 fs_info = btrfs_alloc_dummy_fs_info(nodesize, sectorsize);
 if (!fs_info) {
  test_std_err(TEST_ALLOC_FS_INFO);
  return -ENOMEM;
 }






 cache = btrfs_alloc_dummy_block_group(fs_info,
          BITS_PER_BITMAP * sectorsize + PAGE_SIZE);
 if (!cache) {
  test_std_err(TEST_ALLOC_BLOCK_GROUP);
  btrfs_free_dummy_fs_info(fs_info);
  return 0;
 }

 root = btrfs_alloc_dummy_root(fs_info);
 if (IS_ERR(root)) {
  test_std_err(TEST_ALLOC_ROOT);
  ret = PTR_ERR(root);
  goto out;
 }

 root->fs_info->extent_root = root;

 ret = test_extents(cache);
 if (ret)
  goto out;
 ret = test_bitmaps(cache, sectorsize);
 if (ret)
  goto out;
 ret = test_bitmaps_and_extents(cache, sectorsize);
 if (ret)
  goto out;

 ret = test_steal_space_from_bitmap_to_extent(cache, sectorsize);
out:
 btrfs_free_dummy_block_group(cache);
 btrfs_free_dummy_root(root);
 btrfs_free_dummy_fs_info(fs_info);
 return ret;
}
