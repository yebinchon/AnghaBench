
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct page {int dummy; } ;
struct extent_buffer {struct page** pages; } ;


 int BITMAP_FIRST_BYTE_MASK (unsigned long) ;
 int BITMAP_LAST_BYTE_MASK (unsigned int const) ;
 unsigned long BITS_PER_BYTE ;
 size_t PAGE_SIZE ;
 int PageUptodate (struct page*) ;
 int WARN_ON (int) ;
 int eb_bitmap_offset (struct extent_buffer*,unsigned long,unsigned long,unsigned long*,size_t*) ;
 int * page_address (struct page*) ;

void extent_buffer_bitmap_set(struct extent_buffer *eb, unsigned long start,
         unsigned long pos, unsigned long len)
{
 u8 *kaddr;
 struct page *page;
 unsigned long i;
 size_t offset;
 const unsigned int size = pos + len;
 int bits_to_set = BITS_PER_BYTE - (pos % BITS_PER_BYTE);
 u8 mask_to_set = BITMAP_FIRST_BYTE_MASK(pos);

 eb_bitmap_offset(eb, start, pos, &i, &offset);
 page = eb->pages[i];
 WARN_ON(!PageUptodate(page));
 kaddr = page_address(page);

 while (len >= bits_to_set) {
  kaddr[offset] |= mask_to_set;
  len -= bits_to_set;
  bits_to_set = BITS_PER_BYTE;
  mask_to_set = ~0;
  if (++offset >= PAGE_SIZE && len > 0) {
   offset = 0;
   page = eb->pages[++i];
   WARN_ON(!PageUptodate(page));
   kaddr = page_address(page);
  }
 }
 if (len) {
  mask_to_set &= BITMAP_LAST_BYTE_MASK(size);
  kaddr[offset] |= mask_to_set;
 }
}
