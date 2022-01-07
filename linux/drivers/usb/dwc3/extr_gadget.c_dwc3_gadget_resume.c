
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3 {int gadget_driver; } ;


 int __dwc3_gadget_start (struct dwc3*) ;
 int __dwc3_gadget_stop (struct dwc3*) ;
 int dwc3_gadget_run_stop (struct dwc3*,int,int) ;

int dwc3_gadget_resume(struct dwc3 *dwc)
{
 int ret;

 if (!dwc->gadget_driver)
  return 0;

 ret = __dwc3_gadget_start(dwc);
 if (ret < 0)
  goto err0;

 ret = dwc3_gadget_run_stop(dwc, 1, 0);
 if (ret < 0)
  goto err1;

 return 0;

err1:
 __dwc3_gadget_stop(dwc);

err0:
 return ret;
}
