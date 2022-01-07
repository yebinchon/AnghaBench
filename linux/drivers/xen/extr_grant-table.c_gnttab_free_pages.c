
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int free_xenballooned_pages (int,struct page**) ;
 int gnttab_pages_clear_private (int,struct page**) ;

void gnttab_free_pages(int nr_pages, struct page **pages)
{
 gnttab_pages_clear_private(nr_pages, pages);
 free_xenballooned_pages(nr_pages, pages);
}
