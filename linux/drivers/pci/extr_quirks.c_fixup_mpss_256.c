
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int pcie_mpss; } ;



__attribute__((used)) static void fixup_mpss_256(struct pci_dev *dev)
{
 dev->pcie_mpss = 1;
}
