
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tce_container {int dummy; } ;
struct page {int dummy; } ;


 unsigned long PAGE_SHIFT ;
 struct page* pfn_to_page (unsigned long) ;
 int put_page (struct page*) ;

__attribute__((used)) static void tce_iommu_unuse_page(struct tce_container *container,
  unsigned long hpa)
{
 struct page *page;

 page = pfn_to_page(hpa >> PAGE_SHIFT);
 put_page(page);
}
