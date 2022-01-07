
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int handle_irq; int dev; } ;
struct pci_dev {int bus; int devfn; } ;
struct mid8250 {int dma_index; int dma_dev; } ;


 int ENODEV ;
 int PCI_DEVFN (int,int ) ;
 int PCI_FUNC (int ) ;
 int pci_get_slot (int ,int ) ;
 int tng_handle_irq ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int tng_setup(struct mid8250 *mid, struct uart_port *p)
{
 struct pci_dev *pdev = to_pci_dev(p->dev);
 int index = PCI_FUNC(pdev->devfn);






 if (index-- == 0)
  return -ENODEV;

 mid->dma_index = index;
 mid->dma_dev = pci_get_slot(pdev->bus, PCI_DEVFN(5, 0));

 p->handle_irq = tng_handle_irq;
 return 0;
}
