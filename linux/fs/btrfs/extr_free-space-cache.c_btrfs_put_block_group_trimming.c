
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct extent_map_tree {int lock; } ;
struct extent_map {int dummy; } ;
struct btrfs_fs_info {int chunk_mutex; struct extent_map_tree mapping_tree; } ;
struct TYPE_2__ {int objectid; } ;
struct btrfs_block_group_cache {int free_space_ctl; TYPE_1__ key; int lock; scalar_t__ removed; int trimming; struct btrfs_fs_info* fs_info; } ;


 int BUG_ON (int) ;
 int __btrfs_remove_free_space_cache (int ) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int free_extent_map (struct extent_map*) ;
 struct extent_map* lookup_extent_mapping (struct extent_map_tree*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int remove_extent_mapping (struct extent_map_tree*,struct extent_map*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

void btrfs_put_block_group_trimming(struct btrfs_block_group_cache *block_group)
{
 struct btrfs_fs_info *fs_info = block_group->fs_info;
 struct extent_map_tree *em_tree;
 struct extent_map *em;
 bool cleanup;

 spin_lock(&block_group->lock);
 cleanup = (atomic_dec_and_test(&block_group->trimming) &&
     block_group->removed);
 spin_unlock(&block_group->lock);

 if (cleanup) {
  mutex_lock(&fs_info->chunk_mutex);
  em_tree = &fs_info->mapping_tree;
  write_lock(&em_tree->lock);
  em = lookup_extent_mapping(em_tree, block_group->key.objectid,
        1);
  BUG_ON(!em);
  remove_extent_mapping(em_tree, em);
  write_unlock(&em_tree->lock);
  mutex_unlock(&fs_info->chunk_mutex);


  free_extent_map(em);
  free_extent_map(em);





  __btrfs_remove_free_space_cache(block_group->free_space_ctl);
 }
}
