
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u64 ;
struct page {int dummy; } ;
struct inode {int i_sb; } ;
struct extent_state {int dummy; } ;
struct btrfs_fs_info {scalar_t__ sectorsize; } ;
typedef size_t loff_t ;
struct TYPE_4__ {int flags; int io_tree; } ;


 TYPE_1__* BTRFS_I (struct inode*) ;
 int BTRFS_INODE_PREALLOC ;
 int ClearPageChecked (struct page*) ;
 int EXTENT_DEFRAG ;
 int EXTENT_DELALLOC ;
 unsigned int EXTENT_DELALLOC_NEW ;
 int EXTENT_DO_ACCOUNTING ;
 int SetPageUptodate (struct page*) ;
 int btrfs_find_new_delalloc_bytes (TYPE_1__*,size_t,size_t,struct extent_state**) ;
 int btrfs_is_free_space_inode (TYPE_1__*) ;
 struct btrfs_fs_info* btrfs_sb (int ) ;
 int btrfs_set_extent_delalloc (struct inode*,size_t,size_t,unsigned int,struct extent_state**) ;
 int clear_extent_bit (int *,size_t,size_t,int,int ,int ,struct extent_state**) ;
 size_t i_size_read (struct inode*) ;
 int i_size_write (struct inode*,size_t) ;
 size_t round_up (size_t,scalar_t__) ;
 int set_page_dirty (struct page*) ;

int btrfs_dirty_pages(struct inode *inode, struct page **pages,
        size_t num_pages, loff_t pos, size_t write_bytes,
        struct extent_state **cached)
{
 struct btrfs_fs_info *fs_info = btrfs_sb(inode->i_sb);
 int err = 0;
 int i;
 u64 num_bytes;
 u64 start_pos;
 u64 end_of_last_block;
 u64 end_pos = pos + write_bytes;
 loff_t isize = i_size_read(inode);
 unsigned int extra_bits = 0;

 start_pos = pos & ~((u64) fs_info->sectorsize - 1);
 num_bytes = round_up(write_bytes + pos - start_pos,
        fs_info->sectorsize);

 end_of_last_block = start_pos + num_bytes - 1;





 clear_extent_bit(&BTRFS_I(inode)->io_tree, start_pos, end_of_last_block,
    EXTENT_DELALLOC | EXTENT_DO_ACCOUNTING | EXTENT_DEFRAG,
    0, 0, cached);

 if (!btrfs_is_free_space_inode(BTRFS_I(inode))) {
  if (start_pos >= isize &&
      !(BTRFS_I(inode)->flags & BTRFS_INODE_PREALLOC)) {





   extra_bits |= EXTENT_DELALLOC_NEW;
  } else {
   err = btrfs_find_new_delalloc_bytes(BTRFS_I(inode),
           start_pos,
           num_bytes, cached);
   if (err)
    return err;
  }
 }

 err = btrfs_set_extent_delalloc(inode, start_pos, end_of_last_block,
     extra_bits, cached);
 if (err)
  return err;

 for (i = 0; i < num_pages; i++) {
  struct page *p = pages[i];
  SetPageUptodate(p);
  ClearPageChecked(p);
  set_page_dirty(p);
 }






 if (end_pos > isize)
  i_size_write(inode, end_pos);
 return 0;
}
