
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct map_lookup {int num_stripes; } ;
struct extent_map_tree {int lock; } ;
struct extent_map {scalar_t__ const start; struct map_lookup* map_lookup; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_fs_info {int extent_root; struct extent_map_tree mapping_tree; } ;


 int ASSERT (int ) ;
 struct btrfs_trans_handle* btrfs_start_transaction_fallback_global_rsv (int ,unsigned int,int) ;
 int free_extent_map (struct extent_map*) ;
 struct extent_map* lookup_extent_mapping (struct extent_map_tree*,scalar_t__ const,int) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

struct btrfs_trans_handle *btrfs_start_trans_remove_block_group(
  struct btrfs_fs_info *fs_info, const u64 chunk_offset)
{
 struct extent_map_tree *em_tree = &fs_info->mapping_tree;
 struct extent_map *em;
 struct map_lookup *map;
 unsigned int num_items;

 read_lock(&em_tree->lock);
 em = lookup_extent_mapping(em_tree, chunk_offset, 1);
 read_unlock(&em_tree->lock);
 ASSERT(em && em->start == chunk_offset);
 map = em->map_lookup;
 num_items = 3 + map->num_stripes;
 free_extent_map(em);

 return btrfs_start_transaction_fallback_global_rsv(fs_info->extent_root,
          num_items, 1);
}
