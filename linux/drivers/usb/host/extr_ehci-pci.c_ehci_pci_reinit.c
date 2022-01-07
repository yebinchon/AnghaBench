
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct ehci_hcd {TYPE_1__* regs; } ;
struct TYPE_2__ {int intel_quark_x1000_insnreg01; } ;


 int INTEL_QUARK_X1000_EHCI_MAX_THRESHOLD ;
 int ehci_dbg (struct ehci_hcd*,char*) ;
 int ehci_writel (struct ehci_hcd*,int ,int ) ;
 scalar_t__ is_intel_quark_x1000 (struct pci_dev*) ;
 int pci_set_mwi (struct pci_dev*) ;

__attribute__((used)) static int ehci_pci_reinit(struct ehci_hcd *ehci, struct pci_dev *pdev)
{
 int retval;






 retval = pci_set_mwi(pdev);
 if (!retval)
  ehci_dbg(ehci, "MWI active\n");


 if (is_intel_quark_x1000(pdev)) {




  ehci_writel(ehci, INTEL_QUARK_X1000_EHCI_MAX_THRESHOLD,
   ehci->regs->intel_quark_x1000_insnreg01);
 }

 return 0;
}
