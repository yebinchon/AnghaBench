
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct extent_state {int dummy; } ;
struct extent_io_tree {int dummy; } ;
struct extent_buffer {scalar_t__ len; scalar_t__ start; int fs_info; } ;
struct TYPE_2__ {scalar_t__ journal_info; } ;


 scalar_t__ BTRFS_SEND_TRANS_STUB ;
 int EAGAIN ;
 int btrfs_err_rl (int ,char*,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ btrfs_header_generation (struct extent_buffer*) ;
 int btrfs_set_lock_blocking_read (struct extent_buffer*) ;
 int btrfs_tree_read_lock (struct extent_buffer*) ;
 int btrfs_tree_read_unlock_blocking (struct extent_buffer*) ;
 int clear_extent_buffer_uptodate (struct extent_buffer*) ;
 TYPE_1__* current ;
 int extent_buffer_under_io (struct extent_buffer*) ;
 scalar_t__ extent_buffer_uptodate (struct extent_buffer*) ;
 int lock_extent_bits (struct extent_io_tree*,scalar_t__,scalar_t__,struct extent_state**) ;
 int unlock_extent_cached (struct extent_io_tree*,scalar_t__,scalar_t__,struct extent_state**) ;

__attribute__((used)) static int verify_parent_transid(struct extent_io_tree *io_tree,
     struct extent_buffer *eb, u64 parent_transid,
     int atomic)
{
 struct extent_state *cached_state = ((void*)0);
 int ret;
 bool need_lock = (current->journal_info == BTRFS_SEND_TRANS_STUB);

 if (!parent_transid || btrfs_header_generation(eb) == parent_transid)
  return 0;

 if (atomic)
  return -EAGAIN;

 if (need_lock) {
  btrfs_tree_read_lock(eb);
  btrfs_set_lock_blocking_read(eb);
 }

 lock_extent_bits(io_tree, eb->start, eb->start + eb->len - 1,
    &cached_state);
 if (extent_buffer_uptodate(eb) &&
     btrfs_header_generation(eb) == parent_transid) {
  ret = 0;
  goto out;
 }
 btrfs_err_rl(eb->fs_info,
  "parent transid verify failed on %llu wanted %llu found %llu",
   eb->start,
   parent_transid, btrfs_header_generation(eb));
 ret = 1;
 if (!extent_buffer_under_io(eb))
  clear_extent_buffer_uptodate(eb);
out:
 unlock_extent_cached(io_tree, eb->start, eb->start + eb->len - 1,
        &cached_state);
 if (need_lock)
  btrfs_tree_read_unlock_blocking(eb);
 return ret;
}
