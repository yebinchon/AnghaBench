
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pqi_ctrl_info {int num_msix_vectors_enabled; int irq_mode; TYPE_1__* pci_dev; int num_queue_groups; } ;
struct TYPE_2__ {int dev; } ;


 int IRQ_MODE_MSIX ;
 int PCI_IRQ_AFFINITY ;
 int PCI_IRQ_MSIX ;
 int PQI_MIN_MSIX_VECTORS ;
 int dev_err (int *,char*,int) ;
 int pci_alloc_irq_vectors (TYPE_1__*,int ,int ,int) ;

__attribute__((used)) static int pqi_enable_msix_interrupts(struct pqi_ctrl_info *ctrl_info)
{
 int num_vectors_enabled;

 num_vectors_enabled = pci_alloc_irq_vectors(ctrl_info->pci_dev,
   PQI_MIN_MSIX_VECTORS, ctrl_info->num_queue_groups,
   PCI_IRQ_MSIX | PCI_IRQ_AFFINITY);
 if (num_vectors_enabled < 0) {
  dev_err(&ctrl_info->pci_dev->dev,
   "MSI-X init failed with error %d\n",
   num_vectors_enabled);
  return num_vectors_enabled;
 }

 ctrl_info->num_msix_vectors_enabled = num_vectors_enabled;
 ctrl_info->irq_mode = IRQ_MODE_MSIX;
 return 0;
}
