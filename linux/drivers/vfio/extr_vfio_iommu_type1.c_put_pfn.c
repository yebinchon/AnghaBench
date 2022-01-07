
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int IOMMU_WRITE ;
 int SetPageDirty (struct page*) ;
 int is_invalid_reserved_pfn (unsigned long) ;
 struct page* pfn_to_page (unsigned long) ;
 int put_page (struct page*) ;

__attribute__((used)) static int put_pfn(unsigned long pfn, int prot)
{
 if (!is_invalid_reserved_pfn(pfn)) {
  struct page *page = pfn_to_page(pfn);
  if (prot & IOMMU_WRITE)
   SetPageDirty(page);
  put_page(page);
  return 1;
 }
 return 0;
}
