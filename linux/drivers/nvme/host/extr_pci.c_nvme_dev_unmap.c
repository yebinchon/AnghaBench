
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_dev {int dev; scalar_t__ bar; } ;


 int iounmap (scalar_t__) ;
 int pci_release_mem_regions (int ) ;
 int to_pci_dev (int ) ;

__attribute__((used)) static void nvme_dev_unmap(struct nvme_dev *dev)
{
 if (dev->bar)
  iounmap(dev->bar);
 pci_release_mem_regions(to_pci_dev(dev->dev));
}
