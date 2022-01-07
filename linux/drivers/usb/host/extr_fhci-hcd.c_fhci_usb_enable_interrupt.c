
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct fhci_usb {int intr_nesting_cnt; int saved_msk; struct fhci_hcd* fhci; } ;
struct fhci_hcd {TYPE_1__* timer; TYPE_2__* regs; } ;
struct TYPE_6__ {int irq; } ;
struct TYPE_5__ {int usb_usbmr; int usb_usber; } ;
struct TYPE_4__ {int irq; } ;


 int enable_irq (int ) ;
 int fhci_info (struct fhci_hcd*,char*) ;
 TYPE_3__* fhci_to_hcd (struct fhci_hcd*) ;
 int out_be16 (int *,int) ;

void fhci_usb_enable_interrupt(struct fhci_usb *usb)
{
 struct fhci_hcd *fhci = usb->fhci;

 if (usb->intr_nesting_cnt == 1) {

  enable_irq(fhci_to_hcd(fhci)->irq);


  out_be16(&usb->fhci->regs->usb_usber, 0xffff);
  out_be16(&usb->fhci->regs->usb_usbmr, usb->saved_msk);


  enable_irq(fhci->timer->irq);
 } else if (usb->intr_nesting_cnt > 1)
  fhci_info(fhci, "unbalanced USB interrupts nesting\n");
 usb->intr_nesting_cnt--;
}
