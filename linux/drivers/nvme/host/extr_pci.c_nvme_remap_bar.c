
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct nvme_dev {unsigned long bar_mapped_size; scalar_t__ bar; scalar_t__ dbs; int dev; } ;


 int ENOMEM ;
 scalar_t__ NVME_REG_DBS ;
 scalar_t__ ioremap (int ,unsigned long) ;
 int iounmap (scalar_t__) ;
 unsigned long pci_resource_len (struct pci_dev*,int ) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int nvme_remap_bar(struct nvme_dev *dev, unsigned long size)
{
 struct pci_dev *pdev = to_pci_dev(dev->dev);

 if (size <= dev->bar_mapped_size)
  return 0;
 if (size > pci_resource_len(pdev, 0))
  return -ENOMEM;
 if (dev->bar)
  iounmap(dev->bar);
 dev->bar = ioremap(pci_resource_start(pdev, 0), size);
 if (!dev->bar) {
  dev->bar_mapped_size = 0;
  return -ENOMEM;
 }
 dev->bar_mapped_size = size;
 dev->dbs = dev->bar + NVME_REG_DBS;

 return 0;
}
