
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snic {int vdev; int pdev; } ;


 int VNIC_DEV_INTR_MODE_INTX ;
 int pci_free_irq_vectors (int ) ;
 int svnic_dev_set_intr_mode (int ,int ) ;

void
snic_clear_intr_mode(struct snic *snic)
{
 pci_free_irq_vectors(snic->pdev);
 svnic_dev_set_intr_mode(snic->vdev, VNIC_DEV_INTR_MODE_INTX);
}
