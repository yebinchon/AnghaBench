
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct page {int dummy; } ;
struct inode {int i_mapping; } ;


 int ClearPagePrivate2 (struct page*) ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 void __endio_write_update_ordered (struct inode*,int,int,int) ;
 struct page* find_get_page (int ,unsigned long) ;
 int page_offset (struct page*) ;
 int put_page (struct page*) ;

__attribute__((used)) static inline void btrfs_cleanup_ordered_extents(struct inode *inode,
       struct page *locked_page,
       u64 offset, u64 bytes)
{
 unsigned long index = offset >> PAGE_SHIFT;
 unsigned long end_index = (offset + bytes - 1) >> PAGE_SHIFT;
 u64 page_start = page_offset(locked_page);
 u64 page_end = page_start + PAGE_SIZE - 1;

 struct page *page;

 while (index <= end_index) {
  page = find_get_page(inode->i_mapping, index);
  index++;
  if (!page)
   continue;
  ClearPagePrivate2(page);
  put_page(page);
 }






 if (page_start >= offset && page_end <= (offset + bytes - 1)) {
  offset += PAGE_SIZE;
  bytes -= PAGE_SIZE;
 }

 return __endio_write_update_ordered(inode, offset, bytes, 0);
}
