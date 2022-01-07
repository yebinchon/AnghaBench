
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int devfn; TYPE_1__* sriov; int is_physfn; } ;
struct TYPE_2__ {int offset; int stride; } ;


 int EINVAL ;

int pci_iov_virtfn_devfn(struct pci_dev *dev, int vf_id)
{
 if (!dev->is_physfn)
  return -EINVAL;
 return (dev->devfn + dev->sriov->offset +
  dev->sriov->stride * vf_id) & 0xff;
}
