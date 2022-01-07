
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_epc {int dev; TYPE_1__* ops; } ;
struct TYPE_2__ {int owner; } ;


 scalar_t__ IS_ERR (struct pci_epc*) ;
 int module_put (int ) ;
 int put_device (int *) ;

void pci_epc_put(struct pci_epc *epc)
{
 if (!epc || IS_ERR(epc))
  return;

 module_put(epc->ops->owner);
 put_device(&epc->dev);
}
