
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmem_device {int virt_addr; } ;
struct page {int dummy; } ;
typedef unsigned int phys_addr_t ;


 unsigned long PHYS_PFN (unsigned int) ;
 int clear_mce_nospec (unsigned long) ;
 scalar_t__ is_vmalloc_addr (int ) ;
 struct page* pfn_to_page (unsigned long) ;
 scalar_t__ test_and_clear_pmem_poison (struct page*) ;

__attribute__((used)) static void hwpoison_clear(struct pmem_device *pmem,
  phys_addr_t phys, unsigned int len)
{
 unsigned long pfn_start, pfn_end, pfn;


 if (is_vmalloc_addr(pmem->virt_addr))
  return;

 pfn_start = PHYS_PFN(phys);
 pfn_end = pfn_start + PHYS_PFN(len);
 for (pfn = pfn_start; pfn < pfn_end; pfn++) {
  struct page *page = pfn_to_page(pfn);






  if (test_and_clear_pmem_poison(page))
   clear_mce_nospec(pfn);
 }
}
