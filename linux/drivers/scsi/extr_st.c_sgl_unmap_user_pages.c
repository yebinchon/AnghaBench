
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_buffer {struct page** mapped_pages; } ;
struct page {int dummy; } ;


 int SetPageDirty (struct page*) ;
 int kfree (struct page**) ;
 int put_page (struct page*) ;

__attribute__((used)) static int sgl_unmap_user_pages(struct st_buffer *STbp,
    const unsigned int nr_pages, int dirtied)
{
 int i;

 for (i=0; i < nr_pages; i++) {
  struct page *page = STbp->mapped_pages[i];

  if (dirtied)
   SetPageDirty(page);



  put_page(page);
 }
 kfree(STbp->mapped_pages);
 STbp->mapped_pages = ((void*)0);

 return 0;
}
