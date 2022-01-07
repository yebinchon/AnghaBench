
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fnic {int vdev; int pdev; } ;


 int VNIC_DEV_INTR_MODE_INTX ;
 int pci_free_irq_vectors (int ) ;
 int vnic_dev_set_intr_mode (int ,int ) ;

void fnic_clear_intr_mode(struct fnic *fnic)
{
 pci_free_irq_vectors(fnic->pdev);
 vnic_dev_set_intr_mode(fnic->vdev, VNIC_DEV_INTR_MODE_INTX);
}
