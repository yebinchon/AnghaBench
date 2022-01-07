
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int msi_enabled; } ;


 int free_msi_irqs (struct pci_dev*) ;
 int pci_msi_enable ;
 int pci_msi_shutdown (struct pci_dev*) ;

void pci_disable_msi(struct pci_dev *dev)
{
 if (!pci_msi_enable || !dev || !dev->msi_enabled)
  return;

 pci_msi_shutdown(dev);
 free_msi_irqs(dev);
}
