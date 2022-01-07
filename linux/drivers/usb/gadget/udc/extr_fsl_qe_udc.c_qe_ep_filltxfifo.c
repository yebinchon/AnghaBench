
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qe_udc {TYPE_1__* usb_regs; } ;
struct qe_ep {int epnum; struct qe_udc* udc; } ;
struct TYPE_2__ {int usb_uscom; } ;


 int USB_CMD_EP_MASK ;
 int USB_CMD_STR_FIFO ;
 int out_8 (int *,int) ;

__attribute__((used)) static int qe_ep_filltxfifo(struct qe_ep *ep)
{
 struct qe_udc *udc = ep->udc;

 out_8(&udc->usb_regs->usb_uscom,
   USB_CMD_STR_FIFO | (USB_CMD_EP_MASK & (ep->epnum)));
 return 0;
}
