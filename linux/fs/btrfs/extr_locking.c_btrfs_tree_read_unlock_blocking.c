
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct extent_buffer {int lock_nested; scalar_t__ lock_owner; int read_lock_wq; int blocking_readers; } ;
struct TYPE_2__ {scalar_t__ pid; } ;


 int WARN_ON (int) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 scalar_t__ atomic_read (int *) ;
 int btrfs_assert_tree_read_locked (struct extent_buffer*) ;
 int btrfs_assert_tree_read_locks_put (struct extent_buffer*) ;
 int cond_wake_up_nomb (int *) ;
 TYPE_1__* current ;
 int trace_btrfs_tree_read_unlock_blocking (struct extent_buffer*) ;

void btrfs_tree_read_unlock_blocking(struct extent_buffer *eb)
{
 trace_btrfs_tree_read_unlock_blocking(eb);






 if (eb->lock_nested && current->pid == eb->lock_owner) {
  eb->lock_nested = 0;
  return;
 }
 btrfs_assert_tree_read_locked(eb);
 WARN_ON(atomic_read(&eb->blocking_readers) == 0);

 if (atomic_dec_and_test(&eb->blocking_readers))
  cond_wake_up_nomb(&eb->read_lock_wq);
 btrfs_assert_tree_read_locks_put(eb);
}
