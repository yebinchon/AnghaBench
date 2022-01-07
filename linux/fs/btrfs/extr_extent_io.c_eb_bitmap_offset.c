
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {size_t start; } ;


 size_t BIT_BYTE (unsigned long) ;
 size_t PAGE_SHIFT ;
 size_t offset_in_page (size_t) ;

__attribute__((used)) static inline void eb_bitmap_offset(struct extent_buffer *eb,
        unsigned long start, unsigned long nr,
        unsigned long *page_index,
        size_t *page_offset)
{
 size_t start_offset = offset_in_page(eb->start);
 size_t byte_offset = BIT_BYTE(nr);
 size_t offset;






 offset = start_offset + start + byte_offset;

 *page_index = offset >> PAGE_SHIFT;
 *page_offset = offset_in_page(offset);
}
