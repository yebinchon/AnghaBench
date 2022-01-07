
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {int lock; scalar_t__ blocking_writers; } ;


 int btrfs_assert_spinning_readers_get (struct extent_buffer*) ;
 int btrfs_assert_tree_read_locks_get (struct extent_buffer*) ;
 int read_trylock (int *) ;
 int read_unlock (int *) ;
 int trace_btrfs_try_tree_read_lock (struct extent_buffer*) ;

int btrfs_try_tree_read_lock(struct extent_buffer *eb)
{
 if (eb->blocking_writers)
  return 0;

 if (!read_trylock(&eb->lock))
  return 0;

 if (eb->blocking_writers) {
  read_unlock(&eb->lock);
  return 0;
 }
 btrfs_assert_tree_read_locks_get(eb);
 btrfs_assert_spinning_readers_get(eb);
 trace_btrfs_try_tree_read_lock(eb);
 return 1;
}
