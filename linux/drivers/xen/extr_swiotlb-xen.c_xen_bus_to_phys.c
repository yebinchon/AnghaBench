
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phys_addr_t ;
typedef int dma_addr_t ;


 int XEN_PAGE_MASK ;
 int XEN_PAGE_SHIFT ;
 int XEN_PFN_DOWN (int) ;
 unsigned long bfn_to_pfn (int ) ;

__attribute__((used)) static inline phys_addr_t xen_bus_to_phys(dma_addr_t baddr)
{
 unsigned long xen_pfn = bfn_to_pfn(XEN_PFN_DOWN(baddr));
 dma_addr_t dma = (dma_addr_t)xen_pfn << XEN_PAGE_SHIFT;
 phys_addr_t paddr = dma;

 paddr |= baddr & ~XEN_PAGE_MASK;

 return paddr;
}
