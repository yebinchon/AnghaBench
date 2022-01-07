
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct fhci_usb {scalar_t__ port_status; TYPE_5__* actual_frame; int max_frame_usage; int saved_msk; TYPE_4__* fhci; TYPE_2__* vroot_hub; } ;
struct fhci_hcd {int timer; struct fhci_usb* usb_lld; } ;
struct TYPE_10__ {int frame_status; } ;
struct TYPE_9__ {TYPE_3__* regs; } ;
struct TYPE_8__ {int usb_usbmr; } ;
struct TYPE_6__ {int wPortStatus; int wPortChange; } ;
struct TYPE_7__ {TYPE_1__ port; } ;


 scalar_t__ FHCI_PORT_DISABLED ;
 scalar_t__ FHCI_PORT_FULL ;
 scalar_t__ FHCI_PORT_LOW ;
 int FRAME_IS_TRANSMITTED ;
 int USB_E_IDLE_MASK ;
 int USB_PORT_STAT_CONNECTION ;
 int USB_PORT_STAT_C_CONNECTION ;
 int USB_PORT_STAT_LOW_SPEED ;
 int fhci_host_transmit_actual_frame (struct fhci_usb*) ;
 int fhci_schedule_transactions (struct fhci_usb*) ;
 int gtm_set_exact_timer16 (int ,int ,int) ;
 int out_be16 (int *,int ) ;

__attribute__((used)) static void sof_interrupt(struct fhci_hcd *fhci)
{
 struct fhci_usb *usb = fhci->usb_lld;

 if ((usb->port_status == FHCI_PORT_DISABLED) &&
     (usb->vroot_hub->port.wPortStatus & USB_PORT_STAT_CONNECTION) &&
     !(usb->vroot_hub->port.wPortChange & USB_PORT_STAT_C_CONNECTION)) {
  if (usb->vroot_hub->port.wPortStatus & USB_PORT_STAT_LOW_SPEED)
   usb->port_status = FHCI_PORT_LOW;
  else
   usb->port_status = FHCI_PORT_FULL;

  usb->saved_msk &= ~USB_E_IDLE_MASK;
  out_be16(&usb->fhci->regs->usb_usbmr, usb->saved_msk);
 }

 gtm_set_exact_timer16(fhci->timer, usb->max_frame_usage, 0);

 fhci_host_transmit_actual_frame(usb);
 usb->actual_frame->frame_status = FRAME_IS_TRANSMITTED;

 fhci_schedule_transactions(usb);
}
