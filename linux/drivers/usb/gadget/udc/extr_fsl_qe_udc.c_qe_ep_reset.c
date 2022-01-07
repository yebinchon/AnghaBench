
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct qe_udc {TYPE_1__* usb_regs; struct qe_ep* eps; } ;
struct qe_ep {int dir; } ;
struct TYPE_2__ {int * usb_usep; } ;





 int USB_RHS_IGNORE_OUT ;
 int USB_RTHS_MASK ;
 int USB_THS_IGNORE_IN ;
 int in_be16 (int *) ;
 int out_be16 (int *,int ) ;
 int qe_ep_flushtxfifo (struct qe_ep*) ;
 int qe_epbds_reset (struct qe_udc*,int) ;

__attribute__((used)) static int qe_ep_reset(struct qe_udc *udc, int pipe_num)
{
 struct qe_ep *ep;
 u16 tmpusep;

 ep = &udc->eps[pipe_num];
 tmpusep = in_be16(&udc->usb_regs->usb_usep[pipe_num]);
 tmpusep &= ~USB_RTHS_MASK;

 switch (ep->dir) {
 case 130:
  qe_ep_flushtxfifo(ep);
  break;
 case 128:
  tmpusep |= USB_THS_IGNORE_IN;
  break;
 case 129:
  qe_ep_flushtxfifo(ep);
  tmpusep |= USB_RHS_IGNORE_OUT;
  break;
 default:
  break;
 }
 out_be16(&udc->usb_regs->usb_usep[pipe_num], tmpusep);

 qe_epbds_reset(udc, pipe_num);

 return 0;
}
