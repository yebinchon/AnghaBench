
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct extent_buffer {int lock_owner; int lock; int blocking_readers; scalar_t__ blocking_writers; } ;
struct TYPE_2__ {int pid; } ;


 scalar_t__ atomic_read (int *) ;
 int btrfs_assert_spinning_writers_get (struct extent_buffer*) ;
 int btrfs_assert_tree_write_locks_get (struct extent_buffer*) ;
 TYPE_1__* current ;
 int trace_btrfs_try_tree_write_lock (struct extent_buffer*) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

int btrfs_try_tree_write_lock(struct extent_buffer *eb)
{
 if (eb->blocking_writers || atomic_read(&eb->blocking_readers))
  return 0;

 write_lock(&eb->lock);
 if (eb->blocking_writers || atomic_read(&eb->blocking_readers)) {
  write_unlock(&eb->lock);
  return 0;
 }
 btrfs_assert_tree_write_locks_get(eb);
 btrfs_assert_spinning_writers_get(eb);
 eb->lock_owner = current->pid;
 trace_btrfs_try_tree_write_lock(eb);
 return 1;
}
