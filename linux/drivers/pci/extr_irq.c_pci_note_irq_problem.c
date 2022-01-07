
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct pci_dev {int device; int vendor; TYPE_1__ dev; } ;


 int WARN_ON (int) ;
 int dev_name (TYPE_1__*) ;
 int pci_err (struct pci_dev*,char*,...) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void pci_note_irq_problem(struct pci_dev *pdev, const char *reason)
{
 struct pci_dev *parent = to_pci_dev(pdev->dev.parent);

 pci_err(pdev, "Potentially misrouted IRQ (Bridge %s %04x:%04x)\n",
  dev_name(&parent->dev), parent->vendor, parent->device);
 pci_err(pdev, "%s\n", reason);
 pci_err(pdev, "Please report to linux-kernel@vger.kernel.org\n");
 WARN_ON(1);
}
