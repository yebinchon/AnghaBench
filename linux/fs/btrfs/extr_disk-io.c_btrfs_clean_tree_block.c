
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct extent_buffer {int len; int bflags; struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int dirty_metadata_batch; int dirty_metadata_bytes; TYPE_1__* running_transaction; } ;
struct TYPE_2__ {scalar_t__ transid; } ;


 int EXTENT_BUFFER_DIRTY ;
 int btrfs_assert_tree_locked (struct extent_buffer*) ;
 scalar_t__ btrfs_header_generation (struct extent_buffer*) ;
 int btrfs_set_lock_blocking_write (struct extent_buffer*) ;
 int clear_extent_buffer_dirty (struct extent_buffer*) ;
 int percpu_counter_add_batch (int *,int ,int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

void btrfs_clean_tree_block(struct extent_buffer *buf)
{
 struct btrfs_fs_info *fs_info = buf->fs_info;
 if (btrfs_header_generation(buf) ==
     fs_info->running_transaction->transid) {
  btrfs_assert_tree_locked(buf);

  if (test_and_clear_bit(EXTENT_BUFFER_DIRTY, &buf->bflags)) {
   percpu_counter_add_batch(&fs_info->dirty_metadata_bytes,
       -buf->len,
       fs_info->dirty_metadata_batch);

   btrfs_set_lock_blocking_write(buf);
   clear_extent_buffer_dirty(buf);
  }
 }
}
