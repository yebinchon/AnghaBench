
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct page {int dummy; } ;
struct extent_buffer {scalar_t__ len; size_t start; struct page** pages; } ;


 size_t PAGE_SHIFT ;
 size_t PAGE_SIZE ;
 int PageUptodate (struct page*) ;
 int WARN_ON (int) ;
 size_t min (unsigned long,unsigned long) ;
 size_t offset_in_page (size_t) ;
 char* page_address (struct page*) ;
 int read_extent_buffer (struct extent_buffer*,char*,unsigned long,size_t) ;

void copy_extent_buffer(struct extent_buffer *dst, struct extent_buffer *src,
   unsigned long dst_offset, unsigned long src_offset,
   unsigned long len)
{
 u64 dst_len = dst->len;
 size_t cur;
 size_t offset;
 struct page *page;
 char *kaddr;
 size_t start_offset = offset_in_page(dst->start);
 unsigned long i = (start_offset + dst_offset) >> PAGE_SHIFT;

 WARN_ON(src->len != dst_len);

 offset = offset_in_page(start_offset + dst_offset);

 while (len > 0) {
  page = dst->pages[i];
  WARN_ON(!PageUptodate(page));

  cur = min(len, (unsigned long)(PAGE_SIZE - offset));

  kaddr = page_address(page);
  read_extent_buffer(src, kaddr + offset, src_offset, cur);

  src_offset += cur;
  len -= cur;
  offset = 0;
  i++;
 }
}
