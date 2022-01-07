
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {int can_flush_pending_bgs; } ;
struct TYPE_2__ {int objectid; } ;
struct btrfs_root {TYPE_1__ root_key; struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {struct btrfs_root* free_space_root; struct btrfs_root* dev_root; struct btrfs_root* chunk_root; struct btrfs_root* extent_root; } ;
struct btrfs_disk_key {int dummy; } ;


 struct extent_buffer* btrfs_alloc_tree_block (struct btrfs_trans_handle*,struct btrfs_root*,int ,int ,struct btrfs_disk_key const*,int,int ,int ) ;

__attribute__((used)) static struct extent_buffer *alloc_tree_block_no_bg_flush(
       struct btrfs_trans_handle *trans,
       struct btrfs_root *root,
       u64 parent_start,
       const struct btrfs_disk_key *disk_key,
       int level,
       u64 hint,
       u64 empty_size)
{
 struct btrfs_fs_info *fs_info = root->fs_info;
 struct extent_buffer *ret;
 if (root == fs_info->extent_root ||
     root == fs_info->chunk_root ||
     root == fs_info->dev_root ||
     root == fs_info->free_space_root)
  trans->can_flush_pending_bgs = 0;

 ret = btrfs_alloc_tree_block(trans, root, parent_start,
         root->root_key.objectid, disk_key, level,
         hint, empty_size);
 trans->can_flush_pending_bgs = 1;

 return ret;
}
