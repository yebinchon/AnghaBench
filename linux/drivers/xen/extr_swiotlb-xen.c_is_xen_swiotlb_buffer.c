
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ phys_addr_t ;
typedef int dma_addr_t ;


 int PFN_DOWN (scalar_t__) ;
 unsigned long XEN_PFN_DOWN (int ) ;
 scalar_t__ XEN_PFN_PHYS (unsigned long) ;
 unsigned long bfn_to_local_pfn (unsigned long) ;
 scalar_t__ pfn_valid (int ) ;
 scalar_t__ virt_to_phys (int ) ;
 int xen_io_tlb_end ;
 int xen_io_tlb_start ;

__attribute__((used)) static int is_xen_swiotlb_buffer(dma_addr_t dma_addr)
{
 unsigned long bfn = XEN_PFN_DOWN(dma_addr);
 unsigned long xen_pfn = bfn_to_local_pfn(bfn);
 phys_addr_t paddr = XEN_PFN_PHYS(xen_pfn);





 if (pfn_valid(PFN_DOWN(paddr))) {
  return paddr >= virt_to_phys(xen_io_tlb_start) &&
         paddr < virt_to_phys(xen_io_tlb_end);
 }
 return 0;
}
