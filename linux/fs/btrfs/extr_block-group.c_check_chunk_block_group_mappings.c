
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct extent_map_tree {int lock; } ;
struct extent_map {scalar_t__ start; scalar_t__ len; TYPE_1__* map_lookup; } ;
struct btrfs_fs_info {struct extent_map_tree mapping_tree; } ;
struct TYPE_4__ {scalar_t__ objectid; scalar_t__ offset; } ;
struct btrfs_block_group_cache {int flags; TYPE_2__ key; } ;
struct TYPE_3__ {int type; } ;


 int BTRFS_BLOCK_GROUP_TYPE_MASK ;
 int EUCLEAN ;
 int btrfs_err (struct btrfs_fs_info*,char*,scalar_t__,scalar_t__,...) ;
 struct btrfs_block_group_cache* btrfs_lookup_block_group (struct btrfs_fs_info*,scalar_t__) ;
 int btrfs_put_block_group (struct btrfs_block_group_cache*) ;
 int free_extent_map (struct extent_map*) ;
 struct extent_map* lookup_extent_mapping (struct extent_map_tree*,scalar_t__,int) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

__attribute__((used)) static int check_chunk_block_group_mappings(struct btrfs_fs_info *fs_info)
{
 struct extent_map_tree *map_tree = &fs_info->mapping_tree;
 struct extent_map *em;
 struct btrfs_block_group_cache *bg;
 u64 start = 0;
 int ret = 0;

 while (1) {
  read_lock(&map_tree->lock);





  em = lookup_extent_mapping(map_tree, start, 1);
  read_unlock(&map_tree->lock);
  if (!em)
   break;

  bg = btrfs_lookup_block_group(fs_info, em->start);
  if (!bg) {
   btrfs_err(fs_info,
 "chunk start=%llu len=%llu doesn't have corresponding block group",
         em->start, em->len);
   ret = -EUCLEAN;
   free_extent_map(em);
   break;
  }
  if (bg->key.objectid != em->start ||
      bg->key.offset != em->len ||
      (bg->flags & BTRFS_BLOCK_GROUP_TYPE_MASK) !=
      (em->map_lookup->type & BTRFS_BLOCK_GROUP_TYPE_MASK)) {
   btrfs_err(fs_info,
"chunk start=%llu len=%llu flags=0x%llx doesn't match block group start=%llu len=%llu flags=0x%llx",
    em->start, em->len,
    em->map_lookup->type & BTRFS_BLOCK_GROUP_TYPE_MASK,
    bg->key.objectid, bg->key.offset,
    bg->flags & BTRFS_BLOCK_GROUP_TYPE_MASK);
   ret = -EUCLEAN;
   free_extent_map(em);
   btrfs_put_block_group(bg);
   break;
  }
  start = em->start + em->len;
  free_extent_map(em);
  btrfs_put_block_group(bg);
 }
 return ret;
}
