
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct btrfs_fs_info {int * freed_extents; } ;
struct TYPE_2__ {scalar_t__ offset; scalar_t__ objectid; } ;
struct btrfs_block_group_cache {TYPE_1__ key; struct btrfs_fs_info* fs_info; } ;


 int EXTENT_UPTODATE ;
 int clear_extent_bits (int *,scalar_t__,scalar_t__,int ) ;

void btrfs_free_excluded_extents(struct btrfs_block_group_cache *cache)
{
 struct btrfs_fs_info *fs_info = cache->fs_info;
 u64 start, end;

 start = cache->key.objectid;
 end = start + cache->key.offset - 1;

 clear_extent_bits(&fs_info->freed_extents[0],
     start, end, EXTENT_UPTODATE);
 clear_extent_bits(&fs_info->freed_extents[1],
     start, end, EXTENT_UPTODATE);
}
