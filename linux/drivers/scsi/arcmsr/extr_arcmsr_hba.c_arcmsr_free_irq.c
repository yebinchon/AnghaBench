
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct AdapterControlBlock {int vector_count; } ;


 int free_irq (int ,struct AdapterControlBlock*) ;
 int pci_free_irq_vectors (struct pci_dev*) ;
 int pci_irq_vector (struct pci_dev*,int) ;

__attribute__((used)) static void arcmsr_free_irq(struct pci_dev *pdev,
  struct AdapterControlBlock *acb)
{
 int i;

 for (i = 0; i < acb->vector_count; i++)
  free_irq(pci_irq_vector(pdev, i), acb);
 pci_free_irq_vectors(pdev);
}
