
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int PAGE_SHIFT ;
 int XEN_CPUID_MACHINE_ADDRESS_WIDTH_MASK ;
 int cpuid_eax (int) ;
 int cpuid_ebx (int) ;
 int max_possible_pfn ;
 int xen_cpuid_base () ;
 scalar_t__ xen_pv_domain () ;

__attribute__((used)) static bool gnttab_need_v2(void)
{
 return !!(max_possible_pfn >> 32);
}
