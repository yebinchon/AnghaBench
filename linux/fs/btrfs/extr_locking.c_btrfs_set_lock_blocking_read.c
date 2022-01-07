
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct extent_buffer {scalar_t__ lock_owner; int lock; int blocking_readers; scalar_t__ lock_nested; } ;
struct TYPE_2__ {scalar_t__ pid; } ;


 int atomic_inc (int *) ;
 int btrfs_assert_spinning_readers_put (struct extent_buffer*) ;
 int btrfs_assert_tree_read_locked (struct extent_buffer*) ;
 TYPE_1__* current ;
 int read_unlock (int *) ;
 int trace_btrfs_set_lock_blocking_read (struct extent_buffer*) ;

void btrfs_set_lock_blocking_read(struct extent_buffer *eb)
{
 trace_btrfs_set_lock_blocking_read(eb);





 if (eb->lock_nested && current->pid == eb->lock_owner)
  return;
 btrfs_assert_tree_read_locked(eb);
 atomic_inc(&eb->blocking_readers);
 btrfs_assert_spinning_readers_put(eb);
 read_unlock(&eb->lock);
}
