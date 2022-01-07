
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct extent_buffer {scalar_t__ lock_owner; scalar_t__ blocking_writers; int lock; scalar_t__ lock_nested; } ;
struct TYPE_2__ {scalar_t__ pid; } ;


 int btrfs_assert_spinning_writers_put (struct extent_buffer*) ;
 int btrfs_assert_tree_locked (struct extent_buffer*) ;
 TYPE_1__* current ;
 int trace_btrfs_set_lock_blocking_write (struct extent_buffer*) ;
 int write_unlock (int *) ;

void btrfs_set_lock_blocking_write(struct extent_buffer *eb)
{
 trace_btrfs_set_lock_blocking_write(eb);





 if (eb->lock_nested && current->pid == eb->lock_owner)
  return;
 if (eb->blocking_writers == 0) {
  btrfs_assert_spinning_writers_put(eb);
  btrfs_assert_tree_locked(eb);
  eb->blocking_writers++;
  write_unlock(&eb->lock);
 }
}
