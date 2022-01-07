
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int resource_size_t ;


 unsigned long PHYS_PFN (int ) ;
 unsigned long SUBSECTION_ALIGN_DOWN (unsigned long) ;

__attribute__((used)) static unsigned long init_altmap_base(resource_size_t base)
{
 unsigned long base_pfn = PHYS_PFN(base);

 return SUBSECTION_ALIGN_DOWN(base_pfn);
}
