
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int pci_release_selected_regions (struct pci_dev*,int) ;

void pci_release_regions(struct pci_dev *pdev)
{
 pci_release_selected_regions(pdev, (1 << 6) - 1);
}
