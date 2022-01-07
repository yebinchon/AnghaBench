
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc2_hsotg {unsigned int num_of_eps; int gadget; int lx_state; scalar_t__* eps_out; scalar_t__* eps_in; scalar_t__ test_mode; scalar_t__ connected; } ;


 int DWC2_L3 ;
 int ESHUTDOWN ;
 int USB_STATE_NOTATTACHED ;
 int call_gadget (struct dwc2_hsotg*,int ) ;
 int disconnect ;
 int kill_all_requests (struct dwc2_hsotg*,scalar_t__,int ) ;
 int usb_gadget_set_state (int *,int ) ;

void dwc2_hsotg_disconnect(struct dwc2_hsotg *hsotg)
{
 unsigned int ep;

 if (!hsotg->connected)
  return;

 hsotg->connected = 0;
 hsotg->test_mode = 0;


 for (ep = 0; ep < hsotg->num_of_eps; ep++) {
  if (hsotg->eps_in[ep])
   kill_all_requests(hsotg, hsotg->eps_in[ep],
       -ESHUTDOWN);
  if (hsotg->eps_out[ep])
   kill_all_requests(hsotg, hsotg->eps_out[ep],
       -ESHUTDOWN);
 }

 call_gadget(hsotg, disconnect);
 hsotg->lx_state = DWC2_L3;

 usb_gadget_set_state(&hsotg->gadget, USB_STATE_NOTATTACHED);
}
