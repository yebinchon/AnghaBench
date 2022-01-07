
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fnic {TYPE_1__* msix; int pdev; int vdev; } ;
struct TYPE_2__ {struct fnic* devid; int requested; } ;


 int ARRAY_SIZE (TYPE_1__*) ;



 int free_irq (int ,struct fnic*) ;
 int pci_irq_vector (int ,int) ;
 int vnic_dev_get_intr_mode (int ) ;

void fnic_free_intr(struct fnic *fnic)
{
 int i;

 switch (vnic_dev_get_intr_mode(fnic->vdev)) {
 case 130:
 case 129:
  free_irq(pci_irq_vector(fnic->pdev, 0), fnic);
  break;

 case 128:
  for (i = 0; i < ARRAY_SIZE(fnic->msix); i++)
   if (fnic->msix[i].requested)
    free_irq(pci_irq_vector(fnic->pdev, i),
      fnic->msix[i].devid);
  break;

 default:
  break;
 }
}
