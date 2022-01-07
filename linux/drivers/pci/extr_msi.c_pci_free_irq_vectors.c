
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int pci_disable_msi (struct pci_dev*) ;
 int pci_disable_msix (struct pci_dev*) ;

void pci_free_irq_vectors(struct pci_dev *dev)
{
 pci_disable_msix(dev);
 pci_disable_msi(dev);
}
