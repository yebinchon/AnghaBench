
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {int quirks; } ;
struct nvme_dev {unsigned int* io_queues; TYPE_1__ ctrl; int dev; } ;
struct irq_affinity {int pre_vectors; struct nvme_dev* priv; int calc_sets; } ;


 size_t HCTX_TYPE_DEFAULT ;
 size_t HCTX_TYPE_POLL ;
 size_t HCTX_TYPE_READ ;
 int NVME_QUIRK_SINGLE_VECTOR ;
 int PCI_IRQ_AFFINITY ;
 int PCI_IRQ_ALL_TYPES ;
 unsigned int num_possible_cpus () ;
 int nvme_calc_irq_sets ;
 int pci_alloc_irq_vectors_affinity (struct pci_dev*,int,unsigned int,int,struct irq_affinity*) ;
 unsigned int poll_queues ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int nvme_setup_irqs(struct nvme_dev *dev, unsigned int nr_io_queues)
{
 struct pci_dev *pdev = to_pci_dev(dev->dev);
 struct irq_affinity affd = {
  .pre_vectors = 1,
  .calc_sets = nvme_calc_irq_sets,
  .priv = dev,
 };
 unsigned int irq_queues, this_p_queues;
 unsigned int nr_cpus = num_possible_cpus();





 this_p_queues = poll_queues;
 if (this_p_queues >= nr_io_queues) {
  this_p_queues = nr_io_queues - 1;
  irq_queues = 1;
 } else {
  if (nr_cpus < nr_io_queues - this_p_queues)
   irq_queues = nr_cpus + 1;
  else
   irq_queues = nr_io_queues - this_p_queues + 1;
 }
 dev->io_queues[HCTX_TYPE_POLL] = this_p_queues;


 dev->io_queues[HCTX_TYPE_DEFAULT] = 1;
 dev->io_queues[HCTX_TYPE_READ] = 0;





 if (dev->ctrl.quirks & NVME_QUIRK_SINGLE_VECTOR)
  irq_queues = 1;

 return pci_alloc_irq_vectors_affinity(pdev, 1, irq_queues,
         PCI_IRQ_ALL_TYPES | PCI_IRQ_AFFINITY, &affd);
}
