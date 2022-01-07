
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_epf {TYPE_2__* driver; int dev; } ;
struct TYPE_4__ {TYPE_1__* ops; int owner; } ;
struct TYPE_3__ {int (* bind ) (struct pci_epf*) ;} ;


 int EAGAIN ;
 int EINVAL ;
 int dev_WARN (int *,char*) ;
 int stub1 (struct pci_epf*) ;
 int try_module_get (int ) ;

int pci_epf_bind(struct pci_epf *epf)
{
 if (!epf->driver) {
  dev_WARN(&epf->dev, "epf device not bound to driver\n");
  return -EINVAL;
 }

 if (!try_module_get(epf->driver->owner))
  return -EAGAIN;

 return epf->driver->ops->bind(epf);
}
