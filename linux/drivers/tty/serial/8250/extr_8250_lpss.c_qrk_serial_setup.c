
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int irq; int dev; } ;
struct pci_dev {int dummy; } ;
struct lpss8250 {int dummy; } ;


 int PCI_IRQ_ALL_TYPES ;
 int pci_alloc_irq_vectors (struct pci_dev*,int,int,int ) ;
 int pci_irq_vector (struct pci_dev*,int ) ;
 int pci_set_master (struct pci_dev*) ;
 int qrk_serial_setup_dma (struct lpss8250*,struct uart_port*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int qrk_serial_setup(struct lpss8250 *lpss, struct uart_port *port)
{
 struct pci_dev *pdev = to_pci_dev(port->dev);
 int ret;

 pci_set_master(pdev);

 ret = pci_alloc_irq_vectors(pdev, 1, 1, PCI_IRQ_ALL_TYPES);
 if (ret < 0)
  return ret;

 port->irq = pci_irq_vector(pdev, 0);

 qrk_serial_setup_dma(lpss, port);
 return 0;
}
