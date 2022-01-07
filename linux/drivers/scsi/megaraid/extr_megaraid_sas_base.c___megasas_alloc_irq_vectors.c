
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct megasas_instance {int msix_vectors; int low_latency_index_start; int pdev; scalar_t__ smp_affinity_enable; } ;
struct irq_affinity {int pre_vectors; } ;


 int PCI_IRQ_AFFINITY ;
 int PCI_IRQ_MSIX ;
 int pci_alloc_irq_vectors_affinity (int ,int ,int ,int,struct irq_affinity*) ;

__attribute__((used)) static int
__megasas_alloc_irq_vectors(struct megasas_instance *instance)
{
 int i, irq_flags;
 struct irq_affinity desc = { .pre_vectors = instance->low_latency_index_start };
 struct irq_affinity *descp = &desc;

 irq_flags = PCI_IRQ_MSIX;

 if (instance->smp_affinity_enable)
  irq_flags |= PCI_IRQ_AFFINITY;
 else
  descp = ((void*)0);

 i = pci_alloc_irq_vectors_affinity(instance->pdev,
  instance->low_latency_index_start,
  instance->msix_vectors, irq_flags, descp);

 return i;
}
