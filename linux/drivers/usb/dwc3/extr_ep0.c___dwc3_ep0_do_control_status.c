
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3_ep {int dummy; } ;
struct dwc3 {int dummy; } ;


 int WARN_ON (int ) ;
 int dwc3_ep0_start_control_status (struct dwc3_ep*) ;

__attribute__((used)) static void __dwc3_ep0_do_control_status(struct dwc3 *dwc, struct dwc3_ep *dep)
{
 WARN_ON(dwc3_ep0_start_control_status(dep));
}
