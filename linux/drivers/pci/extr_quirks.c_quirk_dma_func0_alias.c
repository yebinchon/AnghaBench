
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int devfn; } ;


 int PCI_DEVFN (int ,int ) ;
 scalar_t__ PCI_FUNC (int ) ;
 int PCI_SLOT (int ) ;
 int pci_add_dma_alias (struct pci_dev*,int ) ;

__attribute__((used)) static void quirk_dma_func0_alias(struct pci_dev *dev)
{
 if (PCI_FUNC(dev->devfn) != 0)
  pci_add_dma_alias(dev, PCI_DEVFN(PCI_SLOT(dev->devfn), 0));
}
