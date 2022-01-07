
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 unsigned long page_to_pfn (struct page*) ;
 scalar_t__ pfn_to_kaddr (unsigned long) ;

__attribute__((used)) static unsigned long vaddr_page(struct page *page)
{
 unsigned long pfn = page_to_pfn(page);

 return (unsigned long)pfn_to_kaddr(pfn);
}
