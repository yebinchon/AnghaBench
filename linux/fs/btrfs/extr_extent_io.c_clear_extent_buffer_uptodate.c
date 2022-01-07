
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct extent_buffer {struct page** pages; int bflags; } ;


 int ClearPageUptodate (struct page*) ;
 int EXTENT_BUFFER_UPTODATE ;
 int clear_bit (int ,int *) ;
 int num_extent_pages (struct extent_buffer*) ;

void clear_extent_buffer_uptodate(struct extent_buffer *eb)
{
 int i;
 struct page *page;
 int num_pages;

 clear_bit(EXTENT_BUFFER_UPTODATE, &eb->bflags);
 num_pages = num_extent_pages(eb);
 for (i = 0; i < num_pages; i++) {
  page = eb->pages[i];
  if (page)
   ClearPageUptodate(page);
 }
}
