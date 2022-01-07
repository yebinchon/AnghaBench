
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int pci_disable_device (struct pci_dev*) ;
 int pci_release_selected_regions (struct pci_dev*,int) ;

__attribute__((used)) static void
csio_pci_exit(struct pci_dev *pdev, int *bars)
{
 pci_release_selected_regions(pdev, *bars);
 pci_disable_device(pdev);
}
