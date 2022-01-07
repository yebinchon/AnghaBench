
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {scalar_t__ localmem_pool; } ;
struct td {int td_dma; int hwNextTD; } ;
struct ohci_hcd {int td_cache; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 int cpu_to_hc32 (struct ohci_hcd*,int ) ;
 struct td* dma_pool_zalloc (int ,int ,int *) ;
 struct td* gen_pool_dma_zalloc_align (scalar_t__,int,int *,int) ;
 struct usb_hcd* ohci_to_hcd (struct ohci_hcd*) ;

__attribute__((used)) static struct td *
td_alloc (struct ohci_hcd *hc, gfp_t mem_flags)
{
 dma_addr_t dma;
 struct td *td;
 struct usb_hcd *hcd = ohci_to_hcd(hc);

 if (hcd->localmem_pool)
  td = gen_pool_dma_zalloc_align(hcd->localmem_pool,
    sizeof(*td), &dma, 32);
 else
  td = dma_pool_zalloc(hc->td_cache, mem_flags, &dma);
 if (td) {

  td->hwNextTD = cpu_to_hc32 (hc, dma);
  td->td_dma = dma;

 }
 return td;
}
