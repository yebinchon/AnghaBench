
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_free_space_ctl {int dummy; } ;
struct btrfs_free_space {int dummy; } ;
struct btrfs_free_cluster {int window_start; } ;
struct btrfs_block_group_cache {struct btrfs_free_space_ctl* free_space_ctl; } ;


 int __bitmap_clear_bits (struct btrfs_free_space_ctl*,struct btrfs_free_space*,int ,int ) ;
 int get_max_extent_size (struct btrfs_free_space*) ;
 int max (int ,int ) ;
 int search_bitmap (struct btrfs_free_space_ctl*,struct btrfs_free_space*,int *,int *,int) ;

__attribute__((used)) static u64 btrfs_alloc_from_bitmap(struct btrfs_block_group_cache *block_group,
       struct btrfs_free_cluster *cluster,
       struct btrfs_free_space *entry,
       u64 bytes, u64 min_start,
       u64 *max_extent_size)
{
 struct btrfs_free_space_ctl *ctl = block_group->free_space_ctl;
 int err;
 u64 search_start = cluster->window_start;
 u64 search_bytes = bytes;
 u64 ret = 0;

 search_start = min_start;
 search_bytes = bytes;

 err = search_bitmap(ctl, entry, &search_start, &search_bytes, 1);
 if (err) {
  *max_extent_size = max(get_max_extent_size(entry),
           *max_extent_size);
  return 0;
 }

 ret = search_start;
 __bitmap_clear_bits(ctl, entry, ret, bytes);

 return ret;
}
