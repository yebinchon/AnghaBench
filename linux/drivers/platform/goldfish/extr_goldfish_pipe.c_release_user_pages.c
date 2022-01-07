
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef scalar_t__ s32 ;


 int put_page (struct page*) ;
 int set_page_dirty (struct page*) ;

__attribute__((used)) static void release_user_pages(struct page **pages, int pages_count,
          int is_write, s32 consumed_size)
{
 int i;

 for (i = 0; i < pages_count; i++) {
  if (!is_write && consumed_size > 0)
   set_page_dirty(pages[i]);
  put_page(pages[i]);
 }
}
