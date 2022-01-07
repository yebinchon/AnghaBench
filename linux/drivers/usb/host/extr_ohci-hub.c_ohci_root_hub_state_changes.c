
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ohci_hcd {TYPE_1__* regs; } ;
struct TYPE_2__ {int intrenable; } ;


 int OHCI_INTR_RHSC ;
 int ohci_readl (struct ohci_hcd*,int *) ;
 int ohci_writel (struct ohci_hcd*,int,int *) ;

__attribute__((used)) static int ohci_root_hub_state_changes(struct ohci_hcd *ohci, int changed,
  int any_connected, int rhsc_status)
{

 if (ohci_readl(ohci, &ohci->regs->intrenable) & OHCI_INTR_RHSC)
  return 0;





 if (changed || rhsc_status)
  return 1;


 ohci_writel(ohci, OHCI_INTR_RHSC, &ohci->regs->intrenable);
 return 0;
}
