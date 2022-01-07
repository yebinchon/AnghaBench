
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mm_struct {int dummy; } ;


 unsigned long PAGE_SHIFT ;
 int compound_head (struct page*) ;
 scalar_t__ mm_iommu_is_devmem (struct mm_struct*,unsigned long,unsigned int,unsigned long*) ;
 unsigned int page_shift (int ) ;
 struct page* pfn_to_page (unsigned long) ;

__attribute__((used)) static bool tce_page_is_contained(struct mm_struct *mm, unsigned long hpa,
  unsigned int it_page_shift)
{
 struct page *page;
 unsigned long size = 0;

 if (mm_iommu_is_devmem(mm, hpa, it_page_shift, &size))
  return size == (1UL << it_page_shift);

 page = pfn_to_page(hpa >> PAGE_SHIFT);





 return page_shift(compound_head(page)) >= it_page_shift;
}
