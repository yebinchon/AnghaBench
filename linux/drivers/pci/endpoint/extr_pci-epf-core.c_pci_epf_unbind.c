
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_epf {TYPE_2__* driver; int dev; } ;
struct TYPE_4__ {int owner; TYPE_1__* ops; } ;
struct TYPE_3__ {int (* unbind ) (struct pci_epf*) ;} ;


 int dev_WARN (int *,char*) ;
 int module_put (int ) ;
 int stub1 (struct pci_epf*) ;

void pci_epf_unbind(struct pci_epf *epf)
{
 if (!epf->driver) {
  dev_WARN(&epf->dev, "epf device not bound to driver\n");
  return;
 }

 epf->driver->ops->unbind(epf);
 module_put(epf->driver->owner);
}
