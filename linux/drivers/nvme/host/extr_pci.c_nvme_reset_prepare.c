
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct nvme_dev {int ctrl; } ;


 int nvme_disable_prepare_reset (struct nvme_dev*,int) ;
 int nvme_sync_queues (int *) ;
 struct nvme_dev* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void nvme_reset_prepare(struct pci_dev *pdev)
{
 struct nvme_dev *dev = pci_get_drvdata(pdev);






 nvme_disable_prepare_reset(dev, 0);
 nvme_sync_queues(&dev->ctrl);
}
