
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_pci_walk_info {int (* fn ) (struct pci_dev*,void*) ;void* data; int slot; int ret; struct pci_dev* pdev; } ;
struct pci_dev {int bus; } ;


 int pci_walk_bus (int ,int ,struct vfio_pci_walk_info*) ;
 int vfio_pci_walk_wrapper ;

__attribute__((used)) static int vfio_pci_for_each_slot_or_bus(struct pci_dev *pdev,
      int (*fn)(struct pci_dev *,
         void *data), void *data,
      bool slot)
{
 struct vfio_pci_walk_info walk = {
  .fn = fn, .data = data, .pdev = pdev, .slot = slot, .ret = 0,
 };

 pci_walk_bus(pdev->bus, vfio_pci_walk_wrapper, &walk);

 return walk.ret;
}
