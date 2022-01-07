
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_epc {int dev; TYPE_1__* ops; } ;
struct device {int dummy; } ;
struct class_dev_iter {int dummy; } ;
struct TYPE_2__ {int owner; } ;


 int EINVAL ;
 struct pci_epc* ERR_PTR (int) ;
 int class_dev_iter_exit (struct class_dev_iter*) ;
 int class_dev_iter_init (struct class_dev_iter*,int ,int *,int *) ;
 struct device* class_dev_iter_next (struct class_dev_iter*) ;
 int dev_name (struct device*) ;
 int get_device (int *) ;
 int pci_epc_class ;
 scalar_t__ strcmp (char const*,int ) ;
 struct pci_epc* to_pci_epc (struct device*) ;
 int try_module_get (int ) ;

struct pci_epc *pci_epc_get(const char *epc_name)
{
 int ret = -EINVAL;
 struct pci_epc *epc;
 struct device *dev;
 struct class_dev_iter iter;

 class_dev_iter_init(&iter, pci_epc_class, ((void*)0), ((void*)0));
 while ((dev = class_dev_iter_next(&iter))) {
  if (strcmp(epc_name, dev_name(dev)))
   continue;

  epc = to_pci_epc(dev);
  if (!try_module_get(epc->ops->owner)) {
   ret = -EINVAL;
   goto err;
  }

  class_dev_iter_exit(&iter);
  get_device(&epc->dev);
  return epc;
 }

err:
 class_dev_iter_exit(&iter);
 return ERR_PTR(ret);
}
