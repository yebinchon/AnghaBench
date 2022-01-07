
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_ctrl_info {int num_msix_vectors_initialized; int * queue_groups; int pci_dev; } ;


 int free_irq (int ,int *) ;
 int pci_irq_vector (int ,int) ;

__attribute__((used)) static void pqi_free_irqs(struct pqi_ctrl_info *ctrl_info)
{
 int i;

 for (i = 0; i < ctrl_info->num_msix_vectors_initialized; i++)
  free_irq(pci_irq_vector(ctrl_info->pci_dev, i),
   &ctrl_info->queue_groups[i]);

 ctrl_info->num_msix_vectors_initialized = 0;
}
