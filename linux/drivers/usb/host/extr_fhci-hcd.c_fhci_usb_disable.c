
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct fhci_usb {scalar_t__ port_status; TYPE_2__* fhci; } ;
struct fhci_hcd {struct fhci_usb* usb_lld; } ;
struct TYPE_4__ {TYPE_1__* regs; } ;
struct TYPE_3__ {int usb_usmod; } ;


 scalar_t__ FHCI_PORT_FULL ;
 scalar_t__ FHCI_PORT_LOW ;
 int USB_MODE_EN ;
 int clrbits8 (int *,int ) ;
 int fhci_device_disconnected_interrupt (struct fhci_hcd*) ;
 int fhci_port_disable (struct fhci_hcd*) ;
 int fhci_usb_disable_interrupt (struct fhci_usb*) ;

__attribute__((used)) static u32 fhci_usb_disable(struct fhci_hcd *fhci)
{
 struct fhci_usb *usb = fhci->usb_lld;

 fhci_usb_disable_interrupt(usb);
 fhci_port_disable(fhci);


 if (usb->port_status == FHCI_PORT_FULL ||
   usb->port_status == FHCI_PORT_LOW)
  fhci_device_disconnected_interrupt(fhci);

 clrbits8(&usb->fhci->regs->usb_usmod, USB_MODE_EN);

 return 0;
}
