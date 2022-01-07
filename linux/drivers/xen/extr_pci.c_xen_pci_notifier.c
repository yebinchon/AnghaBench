
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct device {int dummy; } ;




 int NOTIFY_DONE ;
 int NOTIFY_OK ;
 int dev_err (struct device*,char*,char*) ;
 int xen_add_device (struct device*) ;
 int xen_remove_device (struct device*) ;

__attribute__((used)) static int xen_pci_notifier(struct notifier_block *nb,
       unsigned long action, void *data)
{
 struct device *dev = data;
 int r = 0;

 switch (action) {
 case 129:
  r = xen_add_device(dev);
  break;
 case 128:
  r = xen_remove_device(dev);
  break;
 default:
  return NOTIFY_DONE;
 }
 if (r)
  dev_err(dev, "Failed to %s - passthrough or MSI/MSI-X might fail!\n",
   action == 129 ? "add" :
   (action == 128 ? "delete" : "?"));
 return NOTIFY_OK;
}
