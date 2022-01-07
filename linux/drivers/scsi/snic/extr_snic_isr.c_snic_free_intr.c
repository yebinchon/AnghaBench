
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snic {TYPE_1__* msix; int pdev; } ;
struct TYPE_2__ {int devid; scalar_t__ requested; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int free_irq (int ,int ) ;
 int pci_irq_vector (int ,int) ;

void
snic_free_intr(struct snic *snic)
{
 int i;


 for (i = 0; i < ARRAY_SIZE(snic->msix); i++) {
  if (snic->msix[i].requested) {
   free_irq(pci_irq_vector(snic->pdev, i),
     snic->msix[i].devid);
  }
 }
}
