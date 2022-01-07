
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct extent_buffer {struct page** pages; } ;


 int check_buffer_tree_ref (struct extent_buffer*) ;
 int mark_page_accessed (struct page*) ;
 int num_extent_pages (struct extent_buffer*) ;

__attribute__((used)) static void mark_extent_buffer_accessed(struct extent_buffer *eb,
  struct page *accessed)
{
 int num_pages, i;

 check_buffer_tree_ref(eb);

 num_pages = num_extent_pages(eb);
 for (i = 0; i < num_pages; i++) {
  struct page *p = eb->pages[i];

  if (p != accessed)
   mark_page_accessed(p);
 }
}
