
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {scalar_t__ localmem_pool; } ;
struct td {int hwINFO; int td_dma; struct td* td_hash; } ;
struct ohci_hcd {int td_cache; struct td** td_hash; } ;


 int TD_DONE ;
 size_t TD_HASH_FUNC (int ) ;
 int cpu_to_hc32 (struct ohci_hcd*,int ) ;
 int dma_pool_free (int ,struct td*,int ) ;
 int gen_pool_free (scalar_t__,unsigned long,int) ;
 int ohci_dbg (struct ohci_hcd*,char*,struct td*) ;
 struct usb_hcd* ohci_to_hcd (struct ohci_hcd*) ;

__attribute__((used)) static void
td_free (struct ohci_hcd *hc, struct td *td)
{
 struct td **prev = &hc->td_hash [TD_HASH_FUNC (td->td_dma)];
 struct usb_hcd *hcd = ohci_to_hcd(hc);

 while (*prev && *prev != td)
  prev = &(*prev)->td_hash;
 if (*prev)
  *prev = td->td_hash;
 else if ((td->hwINFO & cpu_to_hc32(hc, TD_DONE)) != 0)
  ohci_dbg (hc, "no hash for td %p\n", td);

 if (hcd->localmem_pool)
  gen_pool_free(hcd->localmem_pool, (unsigned long)td,
         sizeof(*td));
 else
  dma_pool_free(hc->td_cache, td, td->td_dma);
}
