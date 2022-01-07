
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ehci_hcd {TYPE_1__* regs; } ;
struct TYPE_2__ {int usbmode; } ;


 int USBMODE_BE ;
 int USBMODE_CM_HC ;
 scalar_t__ ehci_big_endian_mmio (struct ehci_hcd*) ;
 int ehci_readl (struct ehci_hcd*,int *) ;
 int ehci_writel (struct ehci_hcd*,int ,int *) ;

__attribute__((used)) static void tdi_reset (struct ehci_hcd *ehci)
{
 u32 tmp;

 tmp = ehci_readl(ehci, &ehci->regs->usbmode);
 tmp |= USBMODE_CM_HC;




 if (ehci_big_endian_mmio(ehci))
  tmp |= USBMODE_BE;
 ehci_writel(ehci, tmp, &ehci->regs->usbmode);
}
