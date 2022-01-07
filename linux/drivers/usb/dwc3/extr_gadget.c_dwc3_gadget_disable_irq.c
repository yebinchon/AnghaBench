
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3 {int regs; } ;


 int DWC3_DEVTEN ;
 int dwc3_writel (int ,int ,int) ;

__attribute__((used)) static void dwc3_gadget_disable_irq(struct dwc3 *dwc)
{

 dwc3_writel(dwc->regs, DWC3_DEVTEN, 0x00);
}
