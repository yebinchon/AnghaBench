
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int devfn; TYPE_2__* sriov; TYPE_1__* bus; int is_physfn; } ;
struct TYPE_4__ {int offset; int stride; } ;
struct TYPE_3__ {int number; } ;


 int EINVAL ;

int pci_iov_virtfn_bus(struct pci_dev *dev, int vf_id)
{
 if (!dev->is_physfn)
  return -EINVAL;
 return dev->bus->number + ((dev->devfn + dev->sriov->offset +
        dev->sriov->stride * vf_id) >> 8);
}
