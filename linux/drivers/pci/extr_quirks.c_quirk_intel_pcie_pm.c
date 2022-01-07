
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int no_d1d2; } ;


 int pci_pm_d3_delay ;

__attribute__((used)) static void quirk_intel_pcie_pm(struct pci_dev *dev)
{
 pci_pm_d3_delay = 120;
 dev->no_d1d2 = 1;
}
