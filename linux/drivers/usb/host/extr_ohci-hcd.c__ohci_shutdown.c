
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct usb_hcd {int dummy; } ;
struct ohci_hcd {int rh_state; TYPE_1__* regs; int fminterval; } ;
struct TYPE_2__ {int fminterval; int cmdstatus; int intrdisable; } ;


 int OHCI_HCR ;
 int OHCI_RH_HALTED ;
 struct ohci_hcd* hcd_to_ohci (struct usb_hcd*) ;
 int ohci_readl (struct ohci_hcd*,int *) ;
 int ohci_writel (struct ohci_hcd*,int ,int *) ;
 int udelay (int) ;

__attribute__((used)) static void _ohci_shutdown(struct usb_hcd *hcd)
{
 struct ohci_hcd *ohci;

 ohci = hcd_to_ohci (hcd);
 ohci_writel(ohci, (u32) ~0, &ohci->regs->intrdisable);


 ohci_writel(ohci, OHCI_HCR, &ohci->regs->cmdstatus);
 ohci_readl(ohci, &ohci->regs->cmdstatus);
 udelay(10);

 ohci_writel(ohci, ohci->fminterval, &ohci->regs->fminterval);
 ohci->rh_state = OHCI_RH_HALTED;
}
