
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xen_pcibk_device {TYPE_1__* xdev; } ;
struct pci_dev {int dev; } ;
struct TYPE_2__ {int otherend_id; int dev; } ;


 int EINVAL ;
 int dev_dbg (int *,char*,int,int,int,int) ;
 int dev_err (int *,char*,int ) ;
 int dev_info (int *,char*,int ) ;
 struct pci_dev* pcistub_get_pci_dev_by_slot (struct xen_pcibk_device*,int,int,int,int) ;
 int xen_find_device_domain_owner (struct pci_dev*) ;
 int xen_pcibk_add_pci_dev (struct xen_pcibk_device*,struct pci_dev*,int,int ) ;
 int xen_pcibk_publish_pci_dev ;
 scalar_t__ xen_register_device_domain_owner (struct pci_dev*,int ) ;
 int xen_unregister_device_domain_owner (struct pci_dev*) ;
 int xenbus_dev_fatal (TYPE_1__*,int,char*,int,int,int,int) ;

__attribute__((used)) static int xen_pcibk_export_device(struct xen_pcibk_device *pdev,
     int domain, int bus, int slot, int func,
     int devid)
{
 struct pci_dev *dev;
 int err = 0;

 dev_dbg(&pdev->xdev->dev, "exporting dom %x bus %x slot %x func %x\n",
  domain, bus, slot, func);

 dev = pcistub_get_pci_dev_by_slot(pdev, domain, bus, slot, func);
 if (!dev) {
  err = -EINVAL;
  xenbus_dev_fatal(pdev->xdev, err,
     "Couldn't locate PCI device "
     "(%04x:%02x:%02x.%d)! "
     "perhaps already in-use?",
     domain, bus, slot, func);
  goto out;
 }

 err = xen_pcibk_add_pci_dev(pdev, dev, devid,
        xen_pcibk_publish_pci_dev);
 if (err)
  goto out;

 dev_info(&dev->dev, "registering for %d\n", pdev->xdev->otherend_id);
 if (xen_register_device_domain_owner(dev,
          pdev->xdev->otherend_id) != 0) {
  dev_err(&dev->dev, "Stealing ownership from dom%d.\n",
   xen_find_device_domain_owner(dev));
  xen_unregister_device_domain_owner(dev);
  xen_register_device_domain_owner(dev, pdev->xdev->otherend_id);
 }
out:
 return err;
}
