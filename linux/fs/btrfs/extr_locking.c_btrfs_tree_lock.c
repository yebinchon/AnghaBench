
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct extent_buffer {scalar_t__ lock_owner; scalar_t__ blocking_writers; int lock; int blocking_readers; int write_lock_wq; int read_lock_wq; } ;
struct TYPE_2__ {scalar_t__ pid; } ;


 int WARN_ON (int) ;
 scalar_t__ atomic_read (int *) ;
 int btrfs_assert_spinning_writers_get (struct extent_buffer*) ;
 int btrfs_assert_tree_write_locks_get (struct extent_buffer*) ;
 TYPE_1__* current ;
 int ktime_get_ns () ;
 int trace_btrfs_tree_lock (struct extent_buffer*,int ) ;
 scalar_t__ trace_btrfs_tree_lock_enabled () ;
 int wait_event (int ,int) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

void btrfs_tree_lock(struct extent_buffer *eb)
{
 u64 start_ns = 0;

 if (trace_btrfs_tree_lock_enabled())
  start_ns = ktime_get_ns();

 WARN_ON(eb->lock_owner == current->pid);
again:
 wait_event(eb->read_lock_wq, atomic_read(&eb->blocking_readers) == 0);
 wait_event(eb->write_lock_wq, eb->blocking_writers == 0);
 write_lock(&eb->lock);
 if (atomic_read(&eb->blocking_readers) || eb->blocking_writers) {
  write_unlock(&eb->lock);
  goto again;
 }
 btrfs_assert_spinning_writers_get(eb);
 btrfs_assert_tree_write_locks_get(eb);
 eb->lock_owner = current->pid;
 trace_btrfs_tree_lock(eb, start_ns);
}
