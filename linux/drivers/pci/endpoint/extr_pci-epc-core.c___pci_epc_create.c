
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct pci_epc_ops {int dummy; } ;
struct TYPE_5__ {struct device* parent; int class; } ;
struct pci_epc {TYPE_1__ dev; int group; struct pci_epc_ops const* ops; int pci_epf; int lock; } ;
struct module {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 struct pci_epc* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ WARN_ON (int) ;
 int dev_name (struct device*) ;
 int dev_set_name (TYPE_1__*,char*,int ) ;
 int device_add (TYPE_1__*) ;
 int device_initialize (TYPE_1__*) ;
 int kfree (struct pci_epc*) ;
 struct pci_epc* kzalloc (int,int ) ;
 int pci_ep_cfs_add_epc_group (int ) ;
 int pci_epc_class ;
 int put_device (TYPE_1__*) ;
 int spin_lock_init (int *) ;

struct pci_epc *
__pci_epc_create(struct device *dev, const struct pci_epc_ops *ops,
   struct module *owner)
{
 int ret;
 struct pci_epc *epc;

 if (WARN_ON(!dev)) {
  ret = -EINVAL;
  goto err_ret;
 }

 epc = kzalloc(sizeof(*epc), GFP_KERNEL);
 if (!epc) {
  ret = -ENOMEM;
  goto err_ret;
 }

 spin_lock_init(&epc->lock);
 INIT_LIST_HEAD(&epc->pci_epf);

 device_initialize(&epc->dev);
 epc->dev.class = pci_epc_class;
 epc->dev.parent = dev;
 epc->ops = ops;

 ret = dev_set_name(&epc->dev, "%s", dev_name(dev));
 if (ret)
  goto put_dev;

 ret = device_add(&epc->dev);
 if (ret)
  goto put_dev;

 epc->group = pci_ep_cfs_add_epc_group(dev_name(dev));

 return epc;

put_dev:
 put_device(&epc->dev);
 kfree(epc);

err_ret:
 return ERR_PTR(ret);
}
