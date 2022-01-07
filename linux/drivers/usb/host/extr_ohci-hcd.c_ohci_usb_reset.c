
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ohci_hcd {int rh_state; TYPE_1__* regs; int hc_control; } ;
struct TYPE_2__ {int control; } ;


 int OHCI_CTRL_RWC ;
 int OHCI_RH_HALTED ;
 int ohci_readl (struct ohci_hcd*,int *) ;
 int ohci_writel (struct ohci_hcd*,int ,int *) ;

__attribute__((used)) static void ohci_usb_reset (struct ohci_hcd *ohci)
{
 ohci->hc_control = ohci_readl (ohci, &ohci->regs->control);
 ohci->hc_control &= OHCI_CTRL_RWC;
 ohci_writel (ohci, ohci->hc_control, &ohci->regs->control);
 ohci->rh_state = OHCI_RH_HALTED;
}
