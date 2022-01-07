
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3 {int gadget_driver; } ;


 int __dwc3_gadget_stop (struct dwc3*) ;
 int dwc3_disconnect_gadget (struct dwc3*) ;
 int dwc3_gadget_run_stop (struct dwc3*,int,int) ;

int dwc3_gadget_suspend(struct dwc3 *dwc)
{
 if (!dwc->gadget_driver)
  return 0;

 dwc3_gadget_run_stop(dwc, 0, 0);
 dwc3_disconnect_gadget(dwc);
 __dwc3_gadget_stop(dwc);

 return 0;
}
