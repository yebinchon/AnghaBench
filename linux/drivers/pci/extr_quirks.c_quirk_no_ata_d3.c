
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev_flags; } ;


 int PCI_DEV_FLAGS_NO_D3 ;

__attribute__((used)) static void quirk_no_ata_d3(struct pci_dev *pdev)
{
 pdev->dev_flags |= PCI_DEV_FLAGS_NO_D3;
}
