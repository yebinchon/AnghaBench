
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3 {int xhci; } ;


 int platform_device_unregister (int ) ;

void dwc3_host_exit(struct dwc3 *dwc)
{
 platform_device_unregister(dwc->xhci);
}
