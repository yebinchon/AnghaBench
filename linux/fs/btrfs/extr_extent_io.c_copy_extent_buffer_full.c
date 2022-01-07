
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {scalar_t__ len; int * pages; } ;


 int ASSERT (int) ;
 int copy_page (int ,int ) ;
 int num_extent_pages (struct extent_buffer*) ;
 int page_address (int ) ;

void copy_extent_buffer_full(struct extent_buffer *dst,
        struct extent_buffer *src)
{
 int i;
 int num_pages;

 ASSERT(dst->len == src->len);

 num_pages = num_extent_pages(dst);
 for (i = 0; i < num_pages; i++)
  copy_page(page_address(dst->pages[i]),
    page_address(src->pages[i]));
}
