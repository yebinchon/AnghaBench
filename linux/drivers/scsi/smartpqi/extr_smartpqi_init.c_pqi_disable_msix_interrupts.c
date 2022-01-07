
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_ctrl_info {scalar_t__ num_msix_vectors_enabled; int pci_dev; } ;


 int pci_free_irq_vectors (int ) ;

__attribute__((used)) static void pqi_disable_msix_interrupts(struct pqi_ctrl_info *ctrl_info)
{
 if (ctrl_info->num_msix_vectors_enabled) {
  pci_free_irq_vectors(ctrl_info->pci_dev);
  ctrl_info->num_msix_vectors_enabled = 0;
 }
}
