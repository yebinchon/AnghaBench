
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {int lock; scalar_t__ blocking_writers; } ;


 int btrfs_assert_spinning_readers_get (struct extent_buffer*) ;
 int btrfs_assert_tree_read_locks_get (struct extent_buffer*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int trace_btrfs_tree_read_lock_atomic (struct extent_buffer*) ;

int btrfs_tree_read_lock_atomic(struct extent_buffer *eb)
{
 if (eb->blocking_writers)
  return 0;

 read_lock(&eb->lock);
 if (eb->blocking_writers) {
  read_unlock(&eb->lock);
  return 0;
 }
 btrfs_assert_tree_read_locks_get(eb);
 btrfs_assert_spinning_readers_get(eb);
 trace_btrfs_tree_read_lock_atomic(eb);
 return 1;
}
