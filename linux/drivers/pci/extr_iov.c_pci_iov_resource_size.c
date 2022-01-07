
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {TYPE_1__* sriov; int is_physfn; } ;
typedef int resource_size_t ;
struct TYPE_2__ {int * barsz; } ;


 int PCI_IOV_RESOURCES ;

resource_size_t pci_iov_resource_size(struct pci_dev *dev, int resno)
{
 if (!dev->is_physfn)
  return 0;

 return dev->sriov->barsz[resno - PCI_IOV_RESOURCES];
}
