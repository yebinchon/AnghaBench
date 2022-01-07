
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {int dummy; } ;
struct ehci_hcd {TYPE_1__* regs; scalar_t__ has_hostpc; } ;
struct TYPE_2__ {int txfill_tuning; } ;


 int ehci_setup (struct usb_hcd*) ;
 int ehci_writel (struct ehci_hcd*,int,int *) ;
 struct ehci_hcd* hcd_to_ehci (struct usb_hcd*) ;

__attribute__((used)) static int tegra_ehci_reset(struct usb_hcd *hcd)
{
 struct ehci_hcd *ehci = hcd_to_ehci(hcd);
 int retval;
 int txfifothresh;

 retval = ehci_setup(hcd);
 if (retval)
  return retval;







 txfifothresh = ehci->has_hostpc ? 0x10 : 10;
 ehci_writel(ehci, txfifothresh << 16, &ehci->regs->txfill_tuning);

 return 0;
}
