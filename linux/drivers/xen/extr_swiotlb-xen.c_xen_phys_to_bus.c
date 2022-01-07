
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phys_addr_t ;
typedef int dma_addr_t ;


 int XEN_PAGE_MASK ;
 int XEN_PAGE_SHIFT ;
 int XEN_PFN_DOWN (int) ;
 unsigned long pfn_to_bfn (int ) ;

__attribute__((used)) static inline dma_addr_t xen_phys_to_bus(phys_addr_t paddr)
{
 unsigned long bfn = pfn_to_bfn(XEN_PFN_DOWN(paddr));
 dma_addr_t dma = (dma_addr_t)bfn << XEN_PAGE_SHIFT;

 dma |= paddr & ~XEN_PAGE_MASK;

 return dma;
}
