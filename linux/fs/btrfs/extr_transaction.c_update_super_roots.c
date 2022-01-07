
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct btrfs_super_block {int uuid_tree_generation; int cache_generation; int root_level; int generation; int root; int chunk_root_level; int chunk_root_generation; int chunk_root; } ;
struct btrfs_root_item {int generation; int level; int bytenr; } ;
struct btrfs_fs_info {int flags; TYPE_2__* tree_root; TYPE_1__* chunk_root; struct btrfs_super_block* super_copy; } ;
struct TYPE_4__ {struct btrfs_root_item root_item; } ;
struct TYPE_3__ {struct btrfs_root_item root_item; } ;


 int BTRFS_FS_UPDATE_UUID_TREE_GEN ;
 int SPACE_CACHE ;
 scalar_t__ btrfs_test_opt (struct btrfs_fs_info*,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void update_super_roots(struct btrfs_fs_info *fs_info)
{
 struct btrfs_root_item *root_item;
 struct btrfs_super_block *super;

 super = fs_info->super_copy;

 root_item = &fs_info->chunk_root->root_item;
 super->chunk_root = root_item->bytenr;
 super->chunk_root_generation = root_item->generation;
 super->chunk_root_level = root_item->level;

 root_item = &fs_info->tree_root->root_item;
 super->root = root_item->bytenr;
 super->generation = root_item->generation;
 super->root_level = root_item->level;
 if (btrfs_test_opt(fs_info, SPACE_CACHE))
  super->cache_generation = root_item->generation;
 if (test_bit(BTRFS_FS_UPDATE_UUID_TREE_GEN, &fs_info->flags))
  super->uuid_tree_generation = root_item->generation;
}
