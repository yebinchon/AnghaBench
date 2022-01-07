
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct extent_io_tree {int dummy; } ;
struct extent_buffer {int bflags; } ;
struct btrfs_fs_info {scalar_t__ nodesize; } ;


 int EXTENT_BUFFER_DIRTY ;
 int clear_extent_bits (struct extent_io_tree*,scalar_t__,scalar_t__,int) ;
 int clear_extent_buffer_dirty (struct extent_buffer*) ;
 struct extent_buffer* find_extent_buffer (struct btrfs_fs_info*,scalar_t__) ;
 int find_first_extent_bit (struct extent_io_tree*,scalar_t__,scalar_t__*,scalar_t__*,int,int *) ;
 int free_extent_buffer_stale (struct extent_buffer*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int wait_on_extent_buffer_writeback (struct extent_buffer*) ;

__attribute__((used)) static int btrfs_destroy_marked_extents(struct btrfs_fs_info *fs_info,
     struct extent_io_tree *dirty_pages,
     int mark)
{
 int ret;
 struct extent_buffer *eb;
 u64 start = 0;
 u64 end;

 while (1) {
  ret = find_first_extent_bit(dirty_pages, start, &start, &end,
         mark, ((void*)0));
  if (ret)
   break;

  clear_extent_bits(dirty_pages, start, end, mark);
  while (start <= end) {
   eb = find_extent_buffer(fs_info, start);
   start += fs_info->nodesize;
   if (!eb)
    continue;
   wait_on_extent_buffer_writeback(eb);

   if (test_and_clear_bit(EXTENT_BUFFER_DIRTY,
            &eb->bflags))
    clear_extent_buffer_dirty(eb);
   free_extent_buffer_stale(eb);
  }
 }

 return ret;
}
