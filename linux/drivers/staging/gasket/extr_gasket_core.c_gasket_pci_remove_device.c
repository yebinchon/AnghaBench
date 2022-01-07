
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct gasket_internal_desc {TYPE_1__* driver_desc; int mutex; struct gasket_dev** devs; } ;
struct gasket_dev {int dev; struct pci_dev* pci_dev; } ;
struct TYPE_2__ {int name; } ;


 int GASKET_DEV_MAX ;
 int __gasket_remove_device (struct gasket_internal_desc*,struct gasket_dev*) ;
 int dev_dbg (int ,char*,int ) ;
 int g_mutex ;
 int gasket_cleanup_pci (struct gasket_dev*) ;
 struct gasket_internal_desc* lookup_pci_internal_desc (struct pci_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void gasket_pci_remove_device(struct pci_dev *pci_dev)
{
 int i;
 struct gasket_internal_desc *internal_desc;
 struct gasket_dev *gasket_dev = ((void*)0);

 mutex_lock(&g_mutex);
 internal_desc = lookup_pci_internal_desc(pci_dev);
 if (!internal_desc) {
  mutex_unlock(&g_mutex);
  return;
 }
 mutex_unlock(&g_mutex);


 mutex_lock(&internal_desc->mutex);
 for (i = 0; i < GASKET_DEV_MAX; i++) {
  if (internal_desc->devs[i] &&
      internal_desc->devs[i]->pci_dev == pci_dev) {
   gasket_dev = internal_desc->devs[i];
   break;
  }
 }
 mutex_unlock(&internal_desc->mutex);

 if (!gasket_dev)
  return;

 dev_dbg(gasket_dev->dev, "remove %s PCI gasket device\n",
  internal_desc->driver_desc->name);

 gasket_cleanup_pci(gasket_dev);
 __gasket_remove_device(internal_desc, gasket_dev);
}
