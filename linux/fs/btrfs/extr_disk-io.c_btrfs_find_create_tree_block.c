
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct extent_buffer {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;


 struct extent_buffer* alloc_extent_buffer (struct btrfs_fs_info*,int ) ;
 struct extent_buffer* alloc_test_extent_buffer (struct btrfs_fs_info*,int ) ;
 scalar_t__ btrfs_is_testing (struct btrfs_fs_info*) ;

struct extent_buffer *btrfs_find_create_tree_block(
      struct btrfs_fs_info *fs_info,
      u64 bytenr)
{
 if (btrfs_is_testing(fs_info))
  return alloc_test_extent_buffer(fs_info, bytenr);
 return alloc_extent_buffer(fs_info, bytenr);
}
