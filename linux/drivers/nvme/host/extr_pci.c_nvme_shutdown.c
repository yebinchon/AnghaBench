
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct nvme_dev {int dummy; } ;


 int nvme_disable_prepare_reset (struct nvme_dev*,int) ;
 struct nvme_dev* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void nvme_shutdown(struct pci_dev *pdev)
{
 struct nvme_dev *dev = pci_get_drvdata(pdev);
 nvme_disable_prepare_reset(dev, 1);
}
