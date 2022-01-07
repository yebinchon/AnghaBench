
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_space_info {int lock; int priority_tickets; int tickets; } ;
struct btrfs_fs_info {int dio_bytes; int delalloc_bytes; int async_delalloc_pages; int async_submit_wait; } ;
struct TYPE_2__ {scalar_t__ journal_info; } ;


 int BTRFS_BLOCK_GROUP_METADATA ;
 scalar_t__ EXTENT_SIZE_PER_ITEM ;
 unsigned long PAGE_SHIFT ;
 int atomic_read (int *) ;
 struct btrfs_space_info* btrfs_find_space_info (struct btrfs_fs_info*,int ) ;
 int btrfs_wait_ordered_roots (struct btrfs_fs_info*,scalar_t__,int ,scalar_t__) ;
 int btrfs_writeback_inodes_sb_nr (struct btrfs_fs_info*,unsigned long,scalar_t__) ;
 scalar_t__ calc_reclaim_items_nr (struct btrfs_fs_info*,scalar_t__) ;
 TYPE_1__* current ;
 scalar_t__ list_empty (int *) ;
 unsigned long min (scalar_t__,scalar_t__) ;
 scalar_t__ percpu_counter_sum_positive (int *) ;
 long schedule_timeout_killable (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_event (int ,int) ;

__attribute__((used)) static void shrink_delalloc(struct btrfs_fs_info *fs_info, u64 to_reclaim,
       u64 orig, bool wait_ordered)
{
 struct btrfs_space_info *space_info;
 struct btrfs_trans_handle *trans;
 u64 delalloc_bytes;
 u64 dio_bytes;
 u64 async_pages;
 u64 items;
 long time_left;
 unsigned long nr_pages;
 int loops;


 items = calc_reclaim_items_nr(fs_info, to_reclaim);
 to_reclaim = items * EXTENT_SIZE_PER_ITEM;

 trans = (struct btrfs_trans_handle *)current->journal_info;
 space_info = btrfs_find_space_info(fs_info, BTRFS_BLOCK_GROUP_METADATA);

 delalloc_bytes = percpu_counter_sum_positive(
      &fs_info->delalloc_bytes);
 dio_bytes = percpu_counter_sum_positive(&fs_info->dio_bytes);
 if (delalloc_bytes == 0 && dio_bytes == 0) {
  if (trans)
   return;
  if (wait_ordered)
   btrfs_wait_ordered_roots(fs_info, items, 0, (u64)-1);
  return;
 }






 if (dio_bytes > delalloc_bytes)
  wait_ordered = 1;

 loops = 0;
 while ((delalloc_bytes || dio_bytes) && loops < 3) {
  nr_pages = min(delalloc_bytes, to_reclaim) >> PAGE_SHIFT;






  btrfs_writeback_inodes_sb_nr(fs_info, nr_pages, items);





  async_pages = atomic_read(&fs_info->async_delalloc_pages);
  if (!async_pages)
   goto skip_async;






  if (async_pages <= nr_pages)
   async_pages = 0;
  else
   async_pages -= nr_pages;

  wait_event(fs_info->async_submit_wait,
      atomic_read(&fs_info->async_delalloc_pages) <=
      (int)async_pages);
skip_async:
  spin_lock(&space_info->lock);
  if (list_empty(&space_info->tickets) &&
      list_empty(&space_info->priority_tickets)) {
   spin_unlock(&space_info->lock);
   break;
  }
  spin_unlock(&space_info->lock);

  loops++;
  if (wait_ordered && !trans) {
   btrfs_wait_ordered_roots(fs_info, items, 0, (u64)-1);
  } else {
   time_left = schedule_timeout_killable(1);
   if (time_left)
    break;
  }
  delalloc_bytes = percpu_counter_sum_positive(
      &fs_info->delalloc_bytes);
  dio_bytes = percpu_counter_sum_positive(&fs_info->dio_bytes);
 }
}
