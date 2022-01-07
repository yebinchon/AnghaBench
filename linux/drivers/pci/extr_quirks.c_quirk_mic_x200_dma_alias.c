
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int PCI_DEVFN (int,int) ;
 int pci_add_dma_alias (struct pci_dev*,int ) ;

__attribute__((used)) static void quirk_mic_x200_dma_alias(struct pci_dev *pdev)
{
 pci_add_dma_alias(pdev, PCI_DEVFN(0x10, 0x0));
 pci_add_dma_alias(pdev, PCI_DEVFN(0x11, 0x0));
 pci_add_dma_alias(pdev, PCI_DEVFN(0x12, 0x3));
}
