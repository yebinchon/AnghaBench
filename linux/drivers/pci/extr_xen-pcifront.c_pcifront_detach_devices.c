
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcifront_device {TYPE_1__* xdev; } ;
struct pci_dev {int dummy; } ;
typedef int str ;
struct TYPE_3__ {int dev; int otherend; int nodename; } ;


 int EINVAL ;
 int ENOMEM ;
 int PCI_DEVFN (unsigned int,unsigned int) ;
 int XBT_NIL ;
 int XenbusStateClosing ;
 scalar_t__ XenbusStateConnected ;
 int XenbusStateReconfiguring ;
 int XenbusStateUnknown ;
 int dev_dbg (int *,char*,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_domain_bus_and_slot (unsigned int,unsigned int,int ) ;
 int pci_lock_rescan_remove () ;
 int pci_stop_and_remove_bus_device (struct pci_dev*) ;
 int pci_unlock_rescan_remove () ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ unlikely (int) ;
 int xenbus_dev_fatal (TYPE_1__*,int,char*,...) ;
 scalar_t__ xenbus_read_driver_state (int ) ;
 int xenbus_read_unsigned (int ,char*,int ) ;
 int xenbus_scanf (int ,int ,char*,char*,...) ;
 int xenbus_switch_state (TYPE_1__*,int ) ;

__attribute__((used)) static int pcifront_detach_devices(struct pcifront_device *pdev)
{
 int err = 0;
 int i, num_devs;
 unsigned int domain, bus, slot, func;
 struct pci_dev *pci_dev;
 char str[64];

 if (xenbus_read_driver_state(pdev->xdev->nodename) !=
     XenbusStateConnected)
  goto out;

 err = xenbus_scanf(XBT_NIL, pdev->xdev->otherend, "num_devs", "%d",
      &num_devs);
 if (err != 1) {
  if (err >= 0)
   err = -EINVAL;
  xenbus_dev_fatal(pdev->xdev, err,
     "Error reading number of PCI devices");
  goto out;
 }


 for (i = 0; i < num_devs; i++) {
  int l, state;
  l = snprintf(str, sizeof(str), "state-%d", i);
  if (unlikely(l >= (sizeof(str) - 1))) {
   err = -ENOMEM;
   goto out;
  }
  state = xenbus_read_unsigned(pdev->xdev->otherend, str,
          XenbusStateUnknown);

  if (state != XenbusStateClosing)
   continue;


  l = snprintf(str, sizeof(str), "vdev-%d", i);
  if (unlikely(l >= (sizeof(str) - 1))) {
   err = -ENOMEM;
   goto out;
  }
  err = xenbus_scanf(XBT_NIL, pdev->xdev->otherend, str,
       "%x:%x:%x.%x", &domain, &bus, &slot, &func);
  if (err != 4) {
   if (err >= 0)
    err = -EINVAL;
   xenbus_dev_fatal(pdev->xdev, err,
      "Error reading PCI device %d", i);
   goto out;
  }

  pci_dev = pci_get_domain_bus_and_slot(domain, bus,
    PCI_DEVFN(slot, func));
  if (!pci_dev) {
   dev_dbg(&pdev->xdev->dev,
    "Cannot get PCI device %04x:%02x:%02x.%d\n",
    domain, bus, slot, func);
   continue;
  }
  pci_lock_rescan_remove();
  pci_stop_and_remove_bus_device(pci_dev);
  pci_dev_put(pci_dev);
  pci_unlock_rescan_remove();

  dev_dbg(&pdev->xdev->dev,
   "PCI device %04x:%02x:%02x.%d removed.\n",
   domain, bus, slot, func);
 }

 err = xenbus_switch_state(pdev->xdev, XenbusStateReconfiguring);

out:
 return err;
}
