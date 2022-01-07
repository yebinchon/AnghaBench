
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_page_foreign {int dummy; } ;
struct page {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SetPagePrivate (struct page*) ;
 struct xen_page_foreign* kzalloc (int,int ) ;
 int set_page_private (struct page*,unsigned long) ;

int gnttab_pages_set_private(int nr_pages, struct page **pages)
{
 int i;

 for (i = 0; i < nr_pages; i++) {

  struct xen_page_foreign *foreign;

  foreign = kzalloc(sizeof(*foreign), GFP_KERNEL);
  if (!foreign)
   return -ENOMEM;

  set_page_private(pages[i], (unsigned long)foreign);

  SetPagePrivate(pages[i]);
 }

 return 0;
}
