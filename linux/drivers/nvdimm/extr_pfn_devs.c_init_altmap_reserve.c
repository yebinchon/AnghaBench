
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int resource_size_t ;


 unsigned long PAGE_SHIFT ;
 unsigned long PHYS_PFN (int ) ;
 unsigned long SUBSECTION_ALIGN_DOWN (unsigned long) ;
 unsigned long info_block_reserve () ;

__attribute__((used)) static unsigned long init_altmap_reserve(resource_size_t base)
{
 unsigned long reserve = info_block_reserve() >> PAGE_SHIFT;
 unsigned long base_pfn = PHYS_PFN(base);

 reserve += base_pfn - SUBSECTION_ALIGN_DOWN(base_pfn);
 return reserve;
}
