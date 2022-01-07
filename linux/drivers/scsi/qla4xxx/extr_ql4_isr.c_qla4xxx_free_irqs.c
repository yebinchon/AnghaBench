
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_qla_host {TYPE_1__* pdev; int flags; } ;
struct TYPE_3__ {scalar_t__ msix_enabled; } ;


 int AF_IRQ_ATTACHED ;
 int free_irq (int ,struct scsi_qla_host*) ;
 int pci_free_irq_vectors (TYPE_1__*) ;
 int pci_irq_vector (TYPE_1__*,int) ;
 int test_and_clear_bit (int ,int *) ;

void qla4xxx_free_irqs(struct scsi_qla_host *ha)
{
 if (!test_and_clear_bit(AF_IRQ_ATTACHED, &ha->flags))
  return;

 if (ha->pdev->msix_enabled)
  free_irq(pci_irq_vector(ha->pdev, 1), ha);
 free_irq(pci_irq_vector(ha->pdev, 0), ha);
 pci_free_irq_vectors(ha->pdev);
}
