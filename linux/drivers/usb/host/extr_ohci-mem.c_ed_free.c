
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {scalar_t__ localmem_pool; } ;
struct ohci_hcd {int ed_cache; } ;
struct ed {int dma; } ;


 int dma_pool_free (int ,struct ed*,int ) ;
 int gen_pool_free (scalar_t__,unsigned long,int) ;
 struct usb_hcd* ohci_to_hcd (struct ohci_hcd*) ;

__attribute__((used)) static void
ed_free (struct ohci_hcd *hc, struct ed *ed)
{
 struct usb_hcd *hcd = ohci_to_hcd(hc);

 if (hcd->localmem_pool)
  gen_pool_free(hcd->localmem_pool, (unsigned long)ed,
         sizeof(*ed));
 else
  dma_pool_free(hc->ed_cache, ed, ed->dma);
}
