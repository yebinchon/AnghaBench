
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct extent_state {int dummy; } ;
struct extent_io_tree {int dummy; } ;
struct btrfs_fs_info {TYPE_2__* btree_inode; } ;
struct address_space {int dummy; } ;
struct TYPE_4__ {struct address_space* i_mapping; } ;
struct TYPE_3__ {int sync_writers; } ;


 TYPE_1__* BTRFS_I (TYPE_2__*) ;
 int ENOMEM ;
 int EXTENT_NEED_WAIT ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int cond_resched () ;
 int convert_extent_bit (struct extent_io_tree*,scalar_t__,scalar_t__,int ,int,struct extent_state**) ;
 int filemap_fdatawait_range (struct address_space*,scalar_t__,scalar_t__) ;
 int filemap_fdatawrite_range (struct address_space*,scalar_t__,scalar_t__) ;
 int find_first_extent_bit (struct extent_io_tree*,scalar_t__,scalar_t__*,scalar_t__*,int,struct extent_state**) ;
 int free_extent_state (struct extent_state*) ;

int btrfs_write_marked_extents(struct btrfs_fs_info *fs_info,
          struct extent_io_tree *dirty_pages, int mark)
{
 int err = 0;
 int werr = 0;
 struct address_space *mapping = fs_info->btree_inode->i_mapping;
 struct extent_state *cached_state = ((void*)0);
 u64 start = 0;
 u64 end;

 atomic_inc(&BTRFS_I(fs_info->btree_inode)->sync_writers);
 while (!find_first_extent_bit(dirty_pages, start, &start, &end,
          mark, &cached_state)) {
  bool wait_writeback = 0;

  err = convert_extent_bit(dirty_pages, start, end,
      EXTENT_NEED_WAIT,
      mark, &cached_state);
  if (err == -ENOMEM) {
   err = 0;
   wait_writeback = 1;
  }
  if (!err)
   err = filemap_fdatawrite_range(mapping, start, end);
  if (err)
   werr = err;
  else if (wait_writeback)
   werr = filemap_fdatawait_range(mapping, start, end);
  free_extent_state(cached_state);
  cached_state = ((void*)0);
  cond_resched();
  start = end + 1;
 }
 atomic_dec(&BTRFS_I(fs_info->btree_inode)->sync_writers);
 return werr;
}
