
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {TYPE_2__* vpd; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* write ) (struct pci_dev*,int ,size_t,void const*) ;} ;


 int ENODEV ;
 int stub1 (struct pci_dev*,int ,size_t,void const*) ;

ssize_t pci_write_vpd(struct pci_dev *dev, loff_t pos, size_t count, const void *buf)
{
 if (!dev->vpd || !dev->vpd->ops)
  return -ENODEV;
 return dev->vpd->ops->write(dev, pos, count, buf);
}
