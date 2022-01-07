
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int alloc_xenballooned_pages (int,struct page**) ;
 int gnttab_free_pages (int,struct page**) ;
 int gnttab_pages_set_private (int,struct page**) ;

int gnttab_alloc_pages(int nr_pages, struct page **pages)
{
 int ret;

 ret = alloc_xenballooned_pages(nr_pages, pages);
 if (ret < 0)
  return ret;

 ret = gnttab_pages_set_private(nr_pages, pages);
 if (ret < 0)
  gnttab_free_pages(nr_pages, pages);

 return ret;
}
