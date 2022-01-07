
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct extent_buffer {scalar_t__ blocking_writers; scalar_t__ lock_owner; int lock_nested; int write_lock_wq; int lock; } ;
struct TYPE_2__ {scalar_t__ pid; } ;


 int BUG_ON (int) ;
 int btrfs_assert_spinning_readers_get (struct extent_buffer*) ;
 int btrfs_assert_tree_read_locks_get (struct extent_buffer*) ;
 TYPE_1__* current ;
 int ktime_get_ns () ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int trace_btrfs_tree_read_lock (struct extent_buffer*,int ) ;
 scalar_t__ trace_btrfs_tree_read_lock_enabled () ;
 int wait_event (int ,int) ;

void btrfs_tree_read_lock(struct extent_buffer *eb)
{
 u64 start_ns = 0;

 if (trace_btrfs_tree_read_lock_enabled())
  start_ns = ktime_get_ns();
again:
 read_lock(&eb->lock);
 BUG_ON(eb->blocking_writers == 0 &&
        current->pid == eb->lock_owner);
 if (eb->blocking_writers && current->pid == eb->lock_owner) {






  BUG_ON(eb->lock_nested);
  eb->lock_nested = 1;
  read_unlock(&eb->lock);
  trace_btrfs_tree_read_lock(eb, start_ns);
  return;
 }
 if (eb->blocking_writers) {
  read_unlock(&eb->lock);
  wait_event(eb->write_lock_wq,
      eb->blocking_writers == 0);
  goto again;
 }
 btrfs_assert_tree_read_locks_get(eb);
 btrfs_assert_spinning_readers_get(eb);
 trace_btrfs_tree_read_lock(eb, start_ns);
}
