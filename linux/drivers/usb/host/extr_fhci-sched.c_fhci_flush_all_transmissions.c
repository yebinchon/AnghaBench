
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct td {struct packet* pkt; } ;
struct packet {int status; } ;
struct fhci_usb {TYPE_2__* fhci; TYPE_3__* actual_frame; } ;
struct TYPE_6__ {int frame_status; } ;
struct TYPE_5__ {TYPE_1__* regs; } ;
struct TYPE_4__ {int usb_usmod; int usb_usber; } ;


 int FRAME_END_TRANSMISSION ;
 int USB_MODE_EN ;
 int USB_TD_TX_ER_TIMEOUT ;
 int clrbits8 (int *,int) ;
 int fhci_flush_bds (struct fhci_usb*) ;
 struct td* fhci_peek_td_from_frame (TYPE_3__*) ;
 int fhci_transaction_confirm (struct fhci_usb*,struct packet*) ;
 int in_8 (int *) ;
 int out_8 (int *,int) ;
 int out_be16 (int *,int) ;

void fhci_flush_all_transmissions(struct fhci_usb *usb)
{
 u8 mode;
 struct td *td;

 mode = in_8(&usb->fhci->regs->usb_usmod);
 clrbits8(&usb->fhci->regs->usb_usmod, USB_MODE_EN);

 fhci_flush_bds(usb);

 while ((td = fhci_peek_td_from_frame(usb->actual_frame)) != ((void*)0)) {
  struct packet *pkt = td->pkt;

  pkt->status = USB_TD_TX_ER_TIMEOUT;
  fhci_transaction_confirm(usb, pkt);
 }

 usb->actual_frame->frame_status = FRAME_END_TRANSMISSION;


 out_be16(&usb->fhci->regs->usb_usber, 0xffff);

 out_8(&usb->fhci->regs->usb_usmod, mode | USB_MODE_EN);
}
