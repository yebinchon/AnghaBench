
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct free_space_extent {scalar_t__ member_1; scalar_t__ member_0; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ offset; scalar_t__ objectid; } ;
struct btrfs_block_group_cache {TYPE_1__ key; } ;


 int ARRAY_SIZE (struct free_space_extent const*) ;
 int __remove_from_free_space_tree (struct btrfs_trans_handle*,struct btrfs_block_group_cache*,struct btrfs_path*,scalar_t__,scalar_t__) ;
 int check_free_space_extents (struct btrfs_trans_handle*,struct btrfs_fs_info*,struct btrfs_block_group_cache*,struct btrfs_path*,struct free_space_extent const*,int ) ;
 int test_err (char*) ;

__attribute__((used)) static int test_remove_end(struct btrfs_trans_handle *trans,
      struct btrfs_fs_info *fs_info,
      struct btrfs_block_group_cache *cache,
      struct btrfs_path *path,
      u32 alignment)
{
 const struct free_space_extent extents[] = {
  {cache->key.objectid, cache->key.offset - alignment},
 };
 int ret;

 ret = __remove_from_free_space_tree(trans, cache, path,
         cache->key.objectid +
         cache->key.offset - alignment,
         alignment);
 if (ret) {
  test_err("could not remove free space");
  return ret;
 }

 return check_free_space_extents(trans, fs_info, cache, path,
     extents, ARRAY_SIZE(extents));
}
