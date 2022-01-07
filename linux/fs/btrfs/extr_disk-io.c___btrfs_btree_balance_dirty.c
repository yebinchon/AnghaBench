
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct btrfs_fs_info {TYPE_1__* btree_inode; int dirty_metadata_batch; int dirty_metadata_bytes; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int i_mapping; } ;


 int BTRFS_DIRTY_METADATA_THRESH ;
 int PF_MEMALLOC ;
 int __percpu_counter_compare (int *,int ,int ) ;
 int balance_dirty_pages_ratelimited (int ) ;
 int btrfs_balance_delayed_items (struct btrfs_fs_info*) ;
 TYPE_2__* current ;

__attribute__((used)) static void __btrfs_btree_balance_dirty(struct btrfs_fs_info *fs_info,
     int flush_delayed)
{




 int ret;

 if (current->flags & PF_MEMALLOC)
  return;

 if (flush_delayed)
  btrfs_balance_delayed_items(fs_info);

 ret = __percpu_counter_compare(&fs_info->dirty_metadata_bytes,
         BTRFS_DIRTY_METADATA_THRESH,
         fs_info->dirty_metadata_batch);
 if (ret > 0) {
  balance_dirty_pages_ratelimited(fs_info->btree_inode->i_mapping);
 }
}
