
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dwc2_hsotg {int ctrl_req; TYPE_1__** eps_out; int gadget; } ;
struct TYPE_2__ {int ep; } ;


 int dwc2_hsotg_ep_free_request (int *,int ) ;
 int usb_del_gadget_udc (int *) ;

int dwc2_hsotg_remove(struct dwc2_hsotg *hsotg)
{
 usb_del_gadget_udc(&hsotg->gadget);
 dwc2_hsotg_ep_free_request(&hsotg->eps_out[0]->ep, hsotg->ctrl_req);

 return 0;
}
