
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int ClearPagePrivate (struct page*) ;
 scalar_t__ PagePrivate (struct page*) ;
 int kfree (void*) ;
 scalar_t__ page_private (struct page*) ;

void gnttab_pages_clear_private(int nr_pages, struct page **pages)
{
 int i;

 for (i = 0; i < nr_pages; i++) {
  if (PagePrivate(pages[i])) {

   kfree((void *)page_private(pages[i]));

   ClearPagePrivate(pages[i]);
  }
 }
}
