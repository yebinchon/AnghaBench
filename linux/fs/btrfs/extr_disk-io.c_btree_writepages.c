
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct writeback_control {scalar_t__ sync_mode; scalar_t__ for_kupdate; } ;
struct btrfs_fs_info {int dirty_metadata_batch; int dirty_metadata_bytes; } ;
struct address_space {int host; } ;
struct TYPE_4__ {TYPE_1__* root; } ;
struct TYPE_3__ {struct btrfs_fs_info* fs_info; } ;


 int BTRFS_DIRTY_METADATA_THRESH ;
 TYPE_2__* BTRFS_I (int ) ;
 scalar_t__ WB_SYNC_NONE ;
 int __percpu_counter_compare (int *,int ,int ) ;
 int btree_write_cache_pages (struct address_space*,struct writeback_control*) ;

__attribute__((used)) static int btree_writepages(struct address_space *mapping,
       struct writeback_control *wbc)
{
 struct btrfs_fs_info *fs_info;
 int ret;

 if (wbc->sync_mode == WB_SYNC_NONE) {

  if (wbc->for_kupdate)
   return 0;

  fs_info = BTRFS_I(mapping->host)->root->fs_info;

  ret = __percpu_counter_compare(&fs_info->dirty_metadata_bytes,
          BTRFS_DIRTY_METADATA_THRESH,
          fs_info->dirty_metadata_batch);
  if (ret < 0)
   return 0;
 }
 return btree_write_cache_pages(mapping, wbc);
}
