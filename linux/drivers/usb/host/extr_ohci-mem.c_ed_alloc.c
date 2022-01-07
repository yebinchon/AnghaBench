
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {scalar_t__ localmem_pool; } ;
struct ohci_hcd {int ed_cache; } ;
struct ed {int dma; int td_list; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 int INIT_LIST_HEAD (int *) ;
 struct ed* dma_pool_zalloc (int ,int ,int *) ;
 struct ed* gen_pool_dma_zalloc_align (scalar_t__,int,int *,int) ;
 struct usb_hcd* ohci_to_hcd (struct ohci_hcd*) ;

__attribute__((used)) static struct ed *
ed_alloc (struct ohci_hcd *hc, gfp_t mem_flags)
{
 dma_addr_t dma;
 struct ed *ed;
 struct usb_hcd *hcd = ohci_to_hcd(hc);

 if (hcd->localmem_pool)
  ed = gen_pool_dma_zalloc_align(hcd->localmem_pool,
    sizeof(*ed), &dma, 16);
 else
  ed = dma_pool_zalloc(hc->ed_cache, mem_flags, &dma);
 if (ed) {
  INIT_LIST_HEAD (&ed->td_list);
  ed->dma = dma;
 }
 return ed;
}
