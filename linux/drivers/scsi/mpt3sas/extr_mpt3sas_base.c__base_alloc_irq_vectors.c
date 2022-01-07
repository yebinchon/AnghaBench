
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_affinity {int pre_vectors; } ;
struct MPT3SAS_ADAPTER {int msix_vector_count; int high_iops_queues; int pdev; scalar_t__ smp_affinity_enable; } ;


 int PCI_IRQ_AFFINITY ;
 int PCI_IRQ_MSIX ;
 int ioc_info (struct MPT3SAS_ADAPTER*,char*,int ,int ) ;
 int pci_alloc_irq_vectors_affinity (int ,int ,int ,int,struct irq_affinity*) ;

__attribute__((used)) static int
_base_alloc_irq_vectors(struct MPT3SAS_ADAPTER *ioc)
{
 int i, irq_flags = PCI_IRQ_MSIX;
 struct irq_affinity desc = { .pre_vectors = ioc->high_iops_queues };
 struct irq_affinity *descp = &desc;

 if (ioc->smp_affinity_enable)
  irq_flags |= PCI_IRQ_AFFINITY;
 else
  descp = ((void*)0);

 ioc_info(ioc, " %d %d\n", ioc->high_iops_queues,
     ioc->msix_vector_count);

 i = pci_alloc_irq_vectors_affinity(ioc->pdev,
     ioc->high_iops_queues,
     ioc->msix_vector_count, irq_flags, descp);

 return i;
}
