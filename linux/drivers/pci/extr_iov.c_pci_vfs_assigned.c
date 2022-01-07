
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int vendor; struct pci_dev* physfn; scalar_t__ is_virtfn; TYPE_1__* sriov; int is_physfn; } ;
struct TYPE_2__ {unsigned short vf_device; } ;


 struct pci_dev* pci_get_device (int ,unsigned short,struct pci_dev*) ;
 scalar_t__ pci_is_dev_assigned (struct pci_dev*) ;

int pci_vfs_assigned(struct pci_dev *dev)
{
 struct pci_dev *vfdev;
 unsigned int vfs_assigned = 0;
 unsigned short dev_id;


 if (!dev->is_physfn)
  return 0;





 dev_id = dev->sriov->vf_device;


 vfdev = pci_get_device(dev->vendor, dev_id, ((void*)0));
 while (vfdev) {




  if (vfdev->is_virtfn && (vfdev->physfn == dev) &&
   pci_is_dev_assigned(vfdev))
   vfs_assigned++;

  vfdev = pci_get_device(dev->vendor, dev_id, vfdev);
 }

 return vfs_assigned;
}
