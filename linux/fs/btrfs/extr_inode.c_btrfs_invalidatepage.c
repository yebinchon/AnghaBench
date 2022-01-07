
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct page {TYPE_1__* mapping; } ;
struct inode {int i_state; } ;
struct extent_state {int dummy; } ;
struct extent_io_tree {int dummy; } ;
struct btrfs_ordered_inode_tree {int lock; } ;
struct btrfs_ordered_extent {scalar_t__ file_offset; scalar_t__ len; scalar_t__ truncated_len; int flags; } ;
struct TYPE_5__ {struct btrfs_ordered_inode_tree ordered_tree; struct extent_io_tree io_tree; } ;
struct TYPE_4__ {struct inode* host; } ;


 TYPE_2__* BTRFS_I (struct inode*) ;
 int BTRFS_ORDERED_TRUNCATED ;
 int ClearPageChecked (struct page*) ;
 int ClearPagePrivate (struct page*) ;
 int EXTENT_DEFRAG ;
 int EXTENT_DELALLOC ;
 int EXTENT_DELALLOC_NEW ;
 int EXTENT_DO_ACCOUNTING ;
 int EXTENT_LOCKED ;
 int GFP_NOFS ;
 int I_FREEING ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ PageDirty (struct page*) ;
 scalar_t__ PagePrivate (struct page*) ;
 scalar_t__ TestClearPagePrivate2 (struct page*) ;
 int __btrfs_releasepage (struct page*,int ) ;
 scalar_t__ btrfs_dec_test_ordered_pending (struct inode*,struct btrfs_ordered_extent**,scalar_t__,scalar_t__,int) ;
 int btrfs_finish_ordered_io (struct btrfs_ordered_extent*) ;
 struct btrfs_ordered_extent* btrfs_lookup_ordered_range (TYPE_2__*,scalar_t__,scalar_t__) ;
 int btrfs_put_ordered_extent (struct btrfs_ordered_extent*) ;
 int btrfs_qgroup_free_data (struct inode*,int *,scalar_t__,scalar_t__) ;
 int btrfs_releasepage (struct page*,int ) ;
 int clear_extent_bit (struct extent_io_tree*,scalar_t__,scalar_t__,int,int,int,struct extent_state**) ;
 int lock_extent_bits (struct extent_io_tree*,scalar_t__,scalar_t__,struct extent_state**) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 scalar_t__ page_offset (struct page*) ;
 int put_page (struct page*) ;
 int set_bit (int ,int *) ;
 int set_page_private (struct page*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wait_on_page_writeback (struct page*) ;

__attribute__((used)) static void btrfs_invalidatepage(struct page *page, unsigned int offset,
     unsigned int length)
{
 struct inode *inode = page->mapping->host;
 struct extent_io_tree *tree;
 struct btrfs_ordered_extent *ordered;
 struct extent_state *cached_state = ((void*)0);
 u64 page_start = page_offset(page);
 u64 page_end = page_start + PAGE_SIZE - 1;
 u64 start;
 u64 end;
 int inode_evicting = inode->i_state & I_FREEING;
 wait_on_page_writeback(page);

 tree = &BTRFS_I(inode)->io_tree;
 if (offset) {
  btrfs_releasepage(page, GFP_NOFS);
  return;
 }

 if (!inode_evicting)
  lock_extent_bits(tree, page_start, page_end, &cached_state);
again:
 start = page_start;
 ordered = btrfs_lookup_ordered_range(BTRFS_I(inode), start,
     page_end - start + 1);
 if (ordered) {
  end = min(page_end, ordered->file_offset + ordered->len - 1);




  if (!inode_evicting)
   clear_extent_bit(tree, start, end,
      EXTENT_DELALLOC | EXTENT_DELALLOC_NEW |
      EXTENT_LOCKED | EXTENT_DO_ACCOUNTING |
      EXTENT_DEFRAG, 1, 0, &cached_state);




  if (TestClearPagePrivate2(page)) {
   struct btrfs_ordered_inode_tree *tree;
   u64 new_len;

   tree = &BTRFS_I(inode)->ordered_tree;

   spin_lock_irq(&tree->lock);
   set_bit(BTRFS_ORDERED_TRUNCATED, &ordered->flags);
   new_len = start - ordered->file_offset;
   if (new_len < ordered->truncated_len)
    ordered->truncated_len = new_len;
   spin_unlock_irq(&tree->lock);

   if (btrfs_dec_test_ordered_pending(inode, &ordered,
          start,
          end - start + 1, 1))
    btrfs_finish_ordered_io(ordered);
  }
  btrfs_put_ordered_extent(ordered);
  if (!inode_evicting) {
   cached_state = ((void*)0);
   lock_extent_bits(tree, start, end,
      &cached_state);
  }

  start = end + 1;
  if (start < page_end)
   goto again;
 }
 if (PageDirty(page))
  btrfs_qgroup_free_data(inode, ((void*)0), page_start, PAGE_SIZE);
 if (!inode_evicting) {
  clear_extent_bit(tree, page_start, page_end, EXTENT_LOCKED |
     EXTENT_DELALLOC | EXTENT_DELALLOC_NEW |
     EXTENT_DO_ACCOUNTING | EXTENT_DEFRAG, 1, 1,
     &cached_state);

  __btrfs_releasepage(page, GFP_NOFS);
 }

 ClearPageChecked(page);
 if (PagePrivate(page)) {
  ClearPagePrivate(page);
  set_page_private(page, 0);
  put_page(page);
 }
}
