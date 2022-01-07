
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct page {int dummy; } ;
struct inode {int i_mapping; } ;
struct extent_io_tree {struct inode* private_data; } ;


 int ASSERT (struct page*) ;
 unsigned long PAGE_SHIFT ;
 struct page* find_get_page (int ,unsigned long) ;
 int put_page (struct page*) ;
 int set_page_writeback (struct page*) ;

void btrfs_set_range_writeback(struct extent_io_tree *tree, u64 start, u64 end)
{
 struct inode *inode = tree->private_data;
 unsigned long index = start >> PAGE_SHIFT;
 unsigned long end_index = end >> PAGE_SHIFT;
 struct page *page;

 while (index <= end_index) {
  page = find_get_page(inode->i_mapping, index);
  ASSERT(page);
  set_page_writeback(page);
  put_page(page);
  index++;
 }
}
