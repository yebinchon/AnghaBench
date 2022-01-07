
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct extent_buffer {int lock_nested; scalar_t__ lock_owner; int lock; } ;
struct TYPE_2__ {scalar_t__ pid; } ;


 int btrfs_assert_spinning_readers_put (struct extent_buffer*) ;
 int btrfs_assert_tree_read_locked (struct extent_buffer*) ;
 int btrfs_assert_tree_read_locks_put (struct extent_buffer*) ;
 TYPE_1__* current ;
 int read_unlock (int *) ;
 int trace_btrfs_tree_read_unlock (struct extent_buffer*) ;

void btrfs_tree_read_unlock(struct extent_buffer *eb)
{
 trace_btrfs_tree_read_unlock(eb);






 if (eb->lock_nested && current->pid == eb->lock_owner) {
  eb->lock_nested = 0;
  return;
 }
 btrfs_assert_tree_read_locked(eb);
 btrfs_assert_spinning_readers_put(eb);
 btrfs_assert_tree_read_locks_put(eb);
 read_unlock(&eb->lock);
}
