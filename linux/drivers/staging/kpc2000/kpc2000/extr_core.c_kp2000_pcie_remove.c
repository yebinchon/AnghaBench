
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int kobj; } ;
struct pci_dev {TYPE_1__ dev; } ;
struct kp2000_device {int card_num; int sem; TYPE_2__* pdev; int * regs_bar_base; int * dma_bar_base; } ;
struct TYPE_5__ {int irq; } ;


 int DMA_BAR ;
 int PCARD_TO_DEV (struct kp2000_device*) ;
 int REG_BAR ;
 int card_num_ida ;
 int free_irq (int ,struct kp2000_device*) ;
 int ida_simple_remove (int *,int ) ;
 int iounmap (int *) ;
 int kfree (struct kp2000_device*) ;
 int kp2000_remove_cores (struct kp2000_device*) ;
 int kp_attr_list ;
 int mfd_remove_devices (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pci_disable_device (TYPE_2__*) ;
 int pci_disable_msi (TYPE_2__*) ;
 struct kp2000_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_region (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;
 int sysfs_remove_files (int *,int ) ;

__attribute__((used)) static void kp2000_pcie_remove(struct pci_dev *pdev)
{
 struct kp2000_device *pcard = pci_get_drvdata(pdev);

 if (!pcard)
  return;

 mutex_lock(&pcard->sem);
 kp2000_remove_cores(pcard);
 mfd_remove_devices(PCARD_TO_DEV(pcard));
 sysfs_remove_files(&pdev->dev.kobj, kp_attr_list);
 free_irq(pcard->pdev->irq, pcard);
 pci_disable_msi(pcard->pdev);
 if (pcard->dma_bar_base) {
  iounmap(pcard->dma_bar_base);
  pci_release_region(pdev, DMA_BAR);
  pcard->dma_bar_base = ((void*)0);
 }
 if (pcard->regs_bar_base) {
  iounmap(pcard->regs_bar_base);
  pci_release_region(pdev, REG_BAR);
  pcard->regs_bar_base = ((void*)0);
 }
 pci_disable_device(pcard->pdev);
 pci_set_drvdata(pdev, ((void*)0));
 mutex_unlock(&pcard->sem);
 ida_simple_remove(&card_num_ida, pcard->card_num);
 kfree(pcard);
}
