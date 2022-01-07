
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfio_pci_walk_info {int ret; int (* fn ) (struct pci_dev*,int ) ;int data; TYPE_1__* pdev; int slot; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int slot; } ;


 int stub1 (struct pci_dev*,int ) ;
 scalar_t__ vfio_pci_dev_below_slot (struct pci_dev*,int ) ;

__attribute__((used)) static int vfio_pci_walk_wrapper(struct pci_dev *pdev, void *data)
{
 struct vfio_pci_walk_info *walk = data;

 if (!walk->slot || vfio_pci_dev_below_slot(pdev, walk->pdev->slot))
  walk->ret = walk->fn(pdev, walk->data);

 return walk->ret;
}
