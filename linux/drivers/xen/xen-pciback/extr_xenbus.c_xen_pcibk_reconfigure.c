
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct xen_pcibk_device {int dev_lock; TYPE_1__* xdev; } ;
typedef int state_str ;
typedef int dev_str ;
struct TYPE_3__ {int nodename; int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int XBT_NIL ;

 int XenbusStateInitialised ;

 int XenbusStateReconfigured ;
 scalar_t__ XenbusStateReconfiguring ;
 int XenbusStateUnknown ;
 int dev_dbg (int *,char*,...) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ unlikely (int) ;
 int xen_pcibk_export_device (struct xen_pcibk_device*,int,int,int,int,int) ;
 int xen_pcibk_publish_pci_root ;
 int xen_pcibk_publish_pci_roots (struct xen_pcibk_device*,int ) ;
 int xen_pcibk_remove_device (struct xen_pcibk_device*,int,int,int,int) ;
 int xenbus_dev_fatal (TYPE_1__*,int,char*,...) ;
 int xenbus_printf (int ,int ,char*,char*,int ) ;
 scalar_t__ xenbus_read_driver_state (int ) ;
 unsigned int xenbus_read_unsigned (int ,char*,int ) ;
 int xenbus_scanf (int ,int ,char*,char*,int*,...) ;
 int xenbus_switch_state (TYPE_1__*,int ) ;

__attribute__((used)) static int xen_pcibk_reconfigure(struct xen_pcibk_device *pdev)
{
 int err = 0;
 int num_devs;
 int domain, bus, slot, func;
 unsigned int substate;
 int i, len;
 char state_str[64];
 char dev_str[64];


 dev_dbg(&pdev->xdev->dev, "Reconfiguring device ...\n");

 mutex_lock(&pdev->dev_lock);

 if (xenbus_read_driver_state(pdev->xdev->nodename) !=
     XenbusStateReconfiguring)
  goto out;

 err = xenbus_scanf(XBT_NIL, pdev->xdev->nodename, "num_devs", "%d",
      &num_devs);
 if (err != 1) {
  if (err >= 0)
   err = -EINVAL;
  xenbus_dev_fatal(pdev->xdev, err,
     "Error reading number of devices");
  goto out;
 }

 for (i = 0; i < num_devs; i++) {
  len = snprintf(state_str, sizeof(state_str), "state-%d", i);
  if (unlikely(len >= (sizeof(state_str) - 1))) {
   err = -ENOMEM;
   xenbus_dev_fatal(pdev->xdev, err,
      "String overflow while reading "
      "configuration");
   goto out;
  }
  substate = xenbus_read_unsigned(pdev->xdev->nodename, state_str,
      XenbusStateUnknown);

  switch (substate) {
  case 128:
   dev_dbg(&pdev->xdev->dev, "Attaching dev-%d ...\n", i);

   len = snprintf(dev_str, sizeof(dev_str), "dev-%d", i);
   if (unlikely(len >= (sizeof(dev_str) - 1))) {
    err = -ENOMEM;
    xenbus_dev_fatal(pdev->xdev, err,
       "String overflow while "
       "reading configuration");
    goto out;
   }
   err = xenbus_scanf(XBT_NIL, pdev->xdev->nodename,
        dev_str, "%x:%x:%x.%x",
        &domain, &bus, &slot, &func);
   if (err < 0) {
    xenbus_dev_fatal(pdev->xdev, err,
       "Error reading device "
       "configuration");
    goto out;
   }
   if (err != 4) {
    err = -EINVAL;
    xenbus_dev_fatal(pdev->xdev, err,
       "Error parsing pci device "
       "configuration");
    goto out;
   }

   err = xen_pcibk_export_device(pdev, domain, bus, slot,
          func, i);
   if (err)
    goto out;


   err = xen_pcibk_publish_pci_roots(pdev,
      xen_pcibk_publish_pci_root);
   if (err) {
    xenbus_dev_fatal(pdev->xdev, err,
       "Error while publish PCI root"
       "buses for frontend");
    goto out;
   }

   err = xenbus_printf(XBT_NIL, pdev->xdev->nodename,
         state_str, "%d",
         XenbusStateInitialised);
   if (err) {
    xenbus_dev_fatal(pdev->xdev, err,
       "Error switching substate of "
       "dev-%d\n", i);
    goto out;
   }
   break;

  case 129:
   dev_dbg(&pdev->xdev->dev, "Detaching dev-%d ...\n", i);

   len = snprintf(dev_str, sizeof(dev_str), "vdev-%d", i);
   if (unlikely(len >= (sizeof(dev_str) - 1))) {
    err = -ENOMEM;
    xenbus_dev_fatal(pdev->xdev, err,
       "String overflow while "
       "reading configuration");
    goto out;
   }
   err = xenbus_scanf(XBT_NIL, pdev->xdev->nodename,
        dev_str, "%x:%x:%x.%x",
        &domain, &bus, &slot, &func);
   if (err < 0) {
    xenbus_dev_fatal(pdev->xdev, err,
       "Error reading device "
       "configuration");
    goto out;
   }
   if (err != 4) {
    err = -EINVAL;
    xenbus_dev_fatal(pdev->xdev, err,
       "Error parsing pci device "
       "configuration");
    goto out;
   }

   err = xen_pcibk_remove_device(pdev, domain, bus, slot,
          func);
   if (err)
    goto out;






   break;

  default:
   break;
  }
 }

 err = xenbus_switch_state(pdev->xdev, XenbusStateReconfigured);
 if (err) {
  xenbus_dev_fatal(pdev->xdev, err,
     "Error switching to reconfigured state!");
  goto out;
 }

out:
 mutex_unlock(&pdev->dev_lock);
 return 0;
}
