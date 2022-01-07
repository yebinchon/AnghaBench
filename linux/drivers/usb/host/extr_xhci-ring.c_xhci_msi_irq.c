
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int xhci_irq (void*) ;

irqreturn_t xhci_msi_irq(int irq, void *hcd)
{
 return xhci_irq(hcd);
}
