
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_space_info {int groups_sem; int * block_groups; } ;
struct btrfs_block_group_cache {int list; int flags; struct btrfs_space_info* space_info; } ;


 int btrfs_bg_flags_to_raid_index (int ) ;
 int btrfs_sysfs_add_block_group_type (struct btrfs_block_group_cache*) ;
 int down_write (int *) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int up_write (int *) ;

__attribute__((used)) static void link_block_group(struct btrfs_block_group_cache *cache)
{
 struct btrfs_space_info *space_info = cache->space_info;
 int index = btrfs_bg_flags_to_raid_index(cache->flags);
 bool first = 0;

 down_write(&space_info->groups_sem);
 if (list_empty(&space_info->block_groups[index]))
  first = 1;
 list_add_tail(&cache->list, &space_info->block_groups[index]);
 up_write(&space_info->groups_sem);

 if (first)
  btrfs_sysfs_add_block_group_type(cache);
}
