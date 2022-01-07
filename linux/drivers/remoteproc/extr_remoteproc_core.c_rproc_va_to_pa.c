
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ phys_addr_t ;


 int WARN_ON (int) ;
 scalar_t__ is_vmalloc_addr (void*) ;
 scalar_t__ offset_in_page (void*) ;
 scalar_t__ page_to_phys (int ) ;
 int virt_addr_valid (void*) ;
 scalar_t__ virt_to_phys (void*) ;
 int vmalloc_to_page (void*) ;

phys_addr_t rproc_va_to_pa(void *cpu_addr)
{





 if (is_vmalloc_addr(cpu_addr)) {
  return page_to_phys(vmalloc_to_page(cpu_addr)) +
        offset_in_page(cpu_addr);
 }

 WARN_ON(!virt_addr_valid(cpu_addr));
 return virt_to_phys(cpu_addr);
}
