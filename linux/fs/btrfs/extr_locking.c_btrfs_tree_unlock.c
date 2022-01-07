
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {int blocking_writers; int lock; int write_lock_wq; scalar_t__ lock_owner; } ;


 int BUG_ON (int) ;
 int btrfs_assert_no_spinning_writers (struct extent_buffer*) ;
 int btrfs_assert_spinning_writers_put (struct extent_buffer*) ;
 int btrfs_assert_tree_locked (struct extent_buffer*) ;
 int btrfs_assert_tree_write_locks_put (struct extent_buffer*) ;
 int cond_wake_up (int *) ;
 int trace_btrfs_tree_unlock (struct extent_buffer*) ;
 int write_unlock (int *) ;

void btrfs_tree_unlock(struct extent_buffer *eb)
{
 int blockers = eb->blocking_writers;

 BUG_ON(blockers > 1);

 btrfs_assert_tree_locked(eb);
 trace_btrfs_tree_unlock(eb);
 eb->lock_owner = 0;
 btrfs_assert_tree_write_locks_put(eb);

 if (blockers) {
  btrfs_assert_no_spinning_writers(eb);
  eb->blocking_writers--;





  cond_wake_up(&eb->write_lock_wq);
 } else {
  btrfs_assert_spinning_writers_put(eb);
  write_unlock(&eb->lock);
 }
}
