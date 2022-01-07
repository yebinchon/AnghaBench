
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int __GFP_HIGHMEM ;
 struct page* alloc_page (int) ;
 int put_page (struct page*) ;

__attribute__((used)) static int
cifs_write_allocate_pages(struct page **pages, unsigned long num_pages)
{
 int rc = 0;
 unsigned long i;

 for (i = 0; i < num_pages; i++) {
  pages[i] = alloc_page(GFP_KERNEL|__GFP_HIGHMEM);
  if (!pages[i]) {




   num_pages = i;
   rc = -ENOMEM;
   break;
  }
 }

 if (rc) {
  for (i = 0; i < num_pages; i++)
   put_page(pages[i]);
 }
 return rc;
}
