
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int PageReserved (struct page*) ;
 int SetPageDirty (struct page*) ;
 int put_page (struct page*) ;

__attribute__((used)) static bool gasket_release_page(struct page *page)
{
 if (!page)
  return 0;

 if (!PageReserved(page))
  SetPageDirty(page);
 put_page(page);

 return 1;
}
