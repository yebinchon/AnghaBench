
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct aac_dev {int max_msix; TYPE_1__* pdev; scalar_t__ msi; struct aac_dev* aac_msix; } ;
struct TYPE_4__ {int irq; } ;


 scalar_t__ aac_is_src (struct aac_dev*) ;
 int free_irq (int ,struct aac_dev*) ;
 int pci_disable_msi (TYPE_1__*) ;
 int pci_disable_msix (TYPE_1__*) ;
 int pci_irq_vector (TYPE_1__*,int) ;

void aac_free_irq(struct aac_dev *dev)
{
 int i;

 if (aac_is_src(dev)) {
  if (dev->max_msix > 1) {
   for (i = 0; i < dev->max_msix; i++)
    free_irq(pci_irq_vector(dev->pdev, i),
      &(dev->aac_msix[i]));
  } else {
   free_irq(dev->pdev->irq, &(dev->aac_msix[0]));
  }
 } else {
  free_irq(dev->pdev->irq, dev);
 }
 if (dev->msi)
  pci_disable_msi(dev->pdev);
 else if (dev->max_msix > 1)
  pci_disable_msix(dev->pdev);
}
