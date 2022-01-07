
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3 {int dummy; } ;


 int DWC3_OTG_ALL_EVENTS ;
 int dwc3_otg_clear_events (struct dwc3*) ;
 int dwc3_otg_disable_events (struct dwc3*,int ) ;

void dwc3_otg_exit(struct dwc3 *dwc)
{

 dwc3_otg_disable_events(dwc, DWC3_OTG_ALL_EVENTS);

 dwc3_otg_clear_events(dwc);
}
