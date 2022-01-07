
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3_ep {int dummy; } ;
struct dwc3 {int ep0_trb_addr; struct dwc3_ep** eps; int ep0_in_setup; } ;


 int DWC3_TRBCTL_CONTROL_SETUP ;
 int WARN_ON (int) ;
 int complete (int *) ;
 int dwc3_ep0_prepare_one_trb (struct dwc3_ep*,int ,int,int ,int) ;
 int dwc3_ep0_start_trans (struct dwc3_ep*) ;

void dwc3_ep0_out_start(struct dwc3 *dwc)
{
 struct dwc3_ep *dep;
 int ret;

 complete(&dwc->ep0_in_setup);

 dep = dwc->eps[0];
 dwc3_ep0_prepare_one_trb(dep, dwc->ep0_trb_addr, 8,
   DWC3_TRBCTL_CONTROL_SETUP, 0);
 ret = dwc3_ep0_start_trans(dep);
 WARN_ON(ret < 0);
}
