
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dev; } ;
struct pci_dev {int device; int devfn; int bus; } ;
struct mid8250 {int dma_index; int dma_dev; } ;


 int EINVAL ;
 int PCI_DEVFN (int ,int) ;



 int PCI_SLOT (int ) ;
 int pci_get_slot (int ,int ) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int pnw_setup(struct mid8250 *mid, struct uart_port *p)
{
 struct pci_dev *pdev = to_pci_dev(p->dev);

 switch (pdev->device) {
 case 130:
  mid->dma_index = 0;
  break;
 case 129:
  mid->dma_index = 1;
  break;
 case 128:
  mid->dma_index = 2;
  break;
 default:
  return -EINVAL;
 }

 mid->dma_dev = pci_get_slot(pdev->bus,
        PCI_DEVFN(PCI_SLOT(pdev->devfn), 3));
 return 0;
}
