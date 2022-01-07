
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u64 ;
typedef int u32 ;
struct btrfs_item {int dummy; } ;
struct TYPE_3__ {size_t offset; } ;
struct btrfs_block_group_cache {int bitmap_high_thresh; int bitmap_low_thresh; TYPE_1__ key; TYPE_2__* fs_info; } ;
struct TYPE_4__ {int sectorsize; } ;


 int BTRFS_FREE_SPACE_BITMAP_BITS ;
 int BTRFS_FREE_SPACE_BITMAP_SIZE ;
 void* div_u64 (size_t,int) ;

void set_free_space_tree_thresholds(struct btrfs_block_group_cache *cache)
{
 u32 bitmap_range;
 size_t bitmap_size;
 u64 num_bitmaps, total_bitmap_size;





 bitmap_range = cache->fs_info->sectorsize * BTRFS_FREE_SPACE_BITMAP_BITS;
 num_bitmaps = div_u64(cache->key.offset + bitmap_range - 1,
         bitmap_range);
 bitmap_size = sizeof(struct btrfs_item) + BTRFS_FREE_SPACE_BITMAP_SIZE;
 total_bitmap_size = num_bitmaps * bitmap_size;
 cache->bitmap_high_thresh = div_u64(total_bitmap_size,
         sizeof(struct btrfs_item));





 if (cache->bitmap_high_thresh > 100)
  cache->bitmap_low_thresh = cache->bitmap_high_thresh - 100;
 else
  cache->bitmap_low_thresh = 0;
}
