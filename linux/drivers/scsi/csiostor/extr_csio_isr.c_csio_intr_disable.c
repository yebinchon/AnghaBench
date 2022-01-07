
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct csio_hw {int intr_mode; int num_sqsets; int flags; int pdev; TYPE_1__* msix_entries; } ;
struct TYPE_2__ {struct csio_hw* dev_id; } ;


 int CSIO_EXTRA_VECS ;
 int CSIO_HWF_HOST_INTR_ENABLED ;



 int CSIO_IM_NONE ;
 int csio_hw_intr_disable (struct csio_hw*) ;
 int free_irq (int ,struct csio_hw*) ;
 int pci_free_irq_vectors (int ) ;
 int pci_irq_vector (int ,int) ;

void
csio_intr_disable(struct csio_hw *hw, bool free)
{
 csio_hw_intr_disable(hw);

 if (free) {
  int i;

  switch (hw->intr_mode) {
  case 128:
   for (i = 0; i < hw->num_sqsets + CSIO_EXTRA_VECS; i++) {
    free_irq(pci_irq_vector(hw->pdev, i),
      hw->msix_entries[i].dev_id);
   }
   break;
  case 129:
  case 130:
   free_irq(pci_irq_vector(hw->pdev, 0), hw);
   break;
  default:
   break;
  }
 }

 pci_free_irq_vectors(hw->pdev);
 hw->intr_mode = CSIO_IM_NONE;
 hw->flags &= ~CSIO_HWF_HOST_INTR_ENABLED;
}
