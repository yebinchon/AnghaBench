
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3 {int * eps; } ;


 int __dwc3_gadget_ep_disable (int ) ;
 int dwc3_gadget_disable_irq (struct dwc3*) ;

__attribute__((used)) static void __dwc3_gadget_stop(struct dwc3 *dwc)
{
 dwc3_gadget_disable_irq(dwc);
 __dwc3_gadget_ep_disable(dwc->eps[0]);
 __dwc3_gadget_ep_disable(dwc->eps[1]);
}
