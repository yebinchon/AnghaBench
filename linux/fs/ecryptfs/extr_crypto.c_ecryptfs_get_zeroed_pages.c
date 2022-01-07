
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int gfp_t ;


 int __GFP_ZERO ;
 struct page* alloc_pages (int,unsigned int) ;
 scalar_t__ page_address (struct page*) ;

__attribute__((used)) static unsigned long ecryptfs_get_zeroed_pages(gfp_t gfp_mask,
            unsigned int order)
{
 struct page *page;

 page = alloc_pages(gfp_mask | __GFP_ZERO, order);
 if (page)
  return (unsigned long) page_address(page);
 return 0;
}
