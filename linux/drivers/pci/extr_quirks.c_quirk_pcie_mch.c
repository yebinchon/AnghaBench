
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int no_msi; } ;



__attribute__((used)) static void quirk_pcie_mch(struct pci_dev *pdev)
{
 pdev->no_msi = 1;
}
