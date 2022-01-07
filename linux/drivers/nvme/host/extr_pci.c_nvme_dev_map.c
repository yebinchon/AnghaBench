
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct nvme_dev {int dev; } ;


 int ENODEV ;
 scalar_t__ NVME_REG_DBS ;
 scalar_t__ nvme_remap_bar (struct nvme_dev*,scalar_t__) ;
 int pci_release_mem_regions (struct pci_dev*) ;
 scalar_t__ pci_request_mem_regions (struct pci_dev*,char*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int nvme_dev_map(struct nvme_dev *dev)
{
 struct pci_dev *pdev = to_pci_dev(dev->dev);

 if (pci_request_mem_regions(pdev, "nvme"))
  return -ENODEV;

 if (nvme_remap_bar(dev, NVME_REG_DBS + 4096))
  goto release;

 return 0;
  release:
 pci_release_mem_regions(pdev);
 return -ENODEV;
}
