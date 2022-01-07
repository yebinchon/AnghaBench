
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u8 ;
struct page {int dummy; } ;
struct extent_buffer {struct page** pages; } ;


 int BITS_PER_BYTE ;
 int PageUptodate (struct page*) ;
 int WARN_ON (int) ;
 int eb_bitmap_offset (struct extent_buffer*,unsigned long,unsigned long,unsigned long*,size_t*) ;
 unsigned long* page_address (struct page*) ;

int extent_buffer_test_bit(struct extent_buffer *eb, unsigned long start,
      unsigned long nr)
{
 u8 *kaddr;
 struct page *page;
 unsigned long i;
 size_t offset;

 eb_bitmap_offset(eb, start, nr, &i, &offset);
 page = eb->pages[i];
 WARN_ON(!PageUptodate(page));
 kaddr = page_address(page);
 return 1U & (kaddr[offset] >> (nr & (BITS_PER_BYTE - 1)));
}
