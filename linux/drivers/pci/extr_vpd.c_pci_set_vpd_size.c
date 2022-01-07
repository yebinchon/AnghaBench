
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {TYPE_2__* vpd; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* set_size ) (struct pci_dev*,size_t) ;} ;


 int ENODEV ;
 int stub1 (struct pci_dev*,size_t) ;

int pci_set_vpd_size(struct pci_dev *dev, size_t len)
{
 if (!dev->vpd || !dev->vpd->ops)
  return -ENODEV;
 return dev->vpd->ops->set_size(dev, len);
}
