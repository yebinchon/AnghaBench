
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int handle_irq; int membase; void* irq; int dev; } ;
struct pci_dev {int dev; } ;
struct hsu_dma_chip {int offset; int length; int regs; void* irq; int * dev; } ;
struct mid8250 {struct pci_dev* dma_dev; TYPE_1__* board; struct hsu_dma_chip dma_chip; } ;
struct TYPE_2__ {int flags; } ;


 int DNV_DMA_CHAN_OFFSET ;
 unsigned int FL_GET_BASE (int ) ;
 int PCI_IRQ_ALL_TYPES ;
 int dnv_handle_irq ;
 int hsu_dma_probe (struct hsu_dma_chip*) ;
 int pci_alloc_irq_vectors (struct pci_dev*,int,int,int ) ;
 void* pci_irq_vector (struct pci_dev*,int ) ;
 int pci_resource_len (struct pci_dev*,unsigned int) ;
 int pci_set_master (struct pci_dev*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int dnv_setup(struct mid8250 *mid, struct uart_port *p)
{
 struct hsu_dma_chip *chip = &mid->dma_chip;
 struct pci_dev *pdev = to_pci_dev(p->dev);
 unsigned int bar = FL_GET_BASE(mid->board->flags);
 int ret;

 pci_set_master(pdev);

 ret = pci_alloc_irq_vectors(pdev, 1, 1, PCI_IRQ_ALL_TYPES);
 if (ret < 0)
  return ret;

 p->irq = pci_irq_vector(pdev, 0);

 chip->dev = &pdev->dev;
 chip->irq = pci_irq_vector(pdev, 0);
 chip->regs = p->membase;
 chip->length = pci_resource_len(pdev, bar);
 chip->offset = DNV_DMA_CHAN_OFFSET;


 ret = hsu_dma_probe(chip);
 if (ret)
  return 0;

 mid->dma_dev = pdev;

 p->handle_irq = dnv_handle_irq;
 return 0;
}
