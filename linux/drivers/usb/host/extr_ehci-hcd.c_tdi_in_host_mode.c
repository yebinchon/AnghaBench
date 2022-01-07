
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ehci_hcd {TYPE_1__* regs; } ;
struct TYPE_2__ {int usbmode; } ;


 int USBMODE_CM_HC ;
 int ehci_readl (struct ehci_hcd*,int *) ;

__attribute__((used)) static int tdi_in_host_mode (struct ehci_hcd *ehci)
{
 u32 tmp;

 tmp = ehci_readl(ehci, &ehci->regs->usbmode);
 return (tmp & 3) == USBMODE_CM_HC;
}
