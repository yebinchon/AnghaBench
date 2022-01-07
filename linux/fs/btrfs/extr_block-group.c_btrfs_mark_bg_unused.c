
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_info {int unused_bgs_lock; int unused_bgs; } ;
struct btrfs_block_group_cache {int bg_list; struct btrfs_fs_info* fs_info; } ;


 int btrfs_get_block_group (struct btrfs_block_group_cache*) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_btrfs_add_unused_block_group (struct btrfs_block_group_cache*) ;

void btrfs_mark_bg_unused(struct btrfs_block_group_cache *bg)
{
 struct btrfs_fs_info *fs_info = bg->fs_info;

 spin_lock(&fs_info->unused_bgs_lock);
 if (list_empty(&bg->bg_list)) {
  btrfs_get_block_group(bg);
  trace_btrfs_add_unused_block_group(bg);
  list_add_tail(&bg->bg_list, &fs_info->unused_bgs);
 }
 spin_unlock(&fs_info->unused_bgs_lock);
}
