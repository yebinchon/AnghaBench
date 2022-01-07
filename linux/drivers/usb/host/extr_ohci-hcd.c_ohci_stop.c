
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int controller; } ;
struct usb_hcd {TYPE_2__ self; scalar_t__ localmem_pool; scalar_t__ irq; } ;
struct ohci_hcd {scalar_t__ hcca_dma; int * hcca; TYPE_1__* regs; int prev_frame_no; int io_watchdog; int nec_work; } ;
struct TYPE_3__ {int intrdisable; } ;


 int IO_WATCHDOG_OFF ;
 int OHCI_INTR_MIE ;
 int del_timer_sync (int *) ;
 int dma_free_coherent (int ,int,int *,scalar_t__) ;
 int flush_work (int *) ;
 int free_irq (scalar_t__,struct usb_hcd*) ;
 int gen_pool_free (scalar_t__,unsigned long,int) ;
 struct ohci_hcd* hcd_to_ohci (struct usb_hcd*) ;
 int ohci_dump (struct ohci_hcd*) ;
 int ohci_mem_cleanup (struct ohci_hcd*) ;
 int ohci_usb_reset (struct ohci_hcd*) ;
 int ohci_writel (struct ohci_hcd*,int ,int *) ;
 scalar_t__ quirk_amdiso (struct ohci_hcd*) ;
 scalar_t__ quirk_nec (struct ohci_hcd*) ;
 int remove_debug_files (struct ohci_hcd*) ;
 int usb_amd_dev_put () ;

__attribute__((used)) static void ohci_stop (struct usb_hcd *hcd)
{
 struct ohci_hcd *ohci = hcd_to_ohci (hcd);

 ohci_dump(ohci);

 if (quirk_nec(ohci))
  flush_work(&ohci->nec_work);
 del_timer_sync(&ohci->io_watchdog);
 ohci->prev_frame_no = IO_WATCHDOG_OFF;

 ohci_writel (ohci, OHCI_INTR_MIE, &ohci->regs->intrdisable);
 ohci_usb_reset(ohci);
 free_irq(hcd->irq, hcd);
 hcd->irq = 0;

 if (quirk_amdiso(ohci))
  usb_amd_dev_put();

 remove_debug_files (ohci);
 ohci_mem_cleanup (ohci);
 if (ohci->hcca) {
  if (hcd->localmem_pool)
   gen_pool_free(hcd->localmem_pool,
          (unsigned long)ohci->hcca,
          sizeof(*ohci->hcca));
  else
   dma_free_coherent(hcd->self.controller,
       sizeof(*ohci->hcca),
       ohci->hcca, ohci->hcca_dma);
  ohci->hcca = ((void*)0);
  ohci->hcca_dma = 0;
 }
}
