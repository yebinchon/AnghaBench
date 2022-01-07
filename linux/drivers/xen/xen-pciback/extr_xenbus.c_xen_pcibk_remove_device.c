
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xen_pcibk_device {TYPE_1__* xdev; } ;
struct pci_dev {int dev; } ;
struct TYPE_2__ {int otherend_id; int dev; } ;


 int EINVAL ;
 int PCI_DEVFN (int,int) ;
 int dev_dbg (int *,char*,int,...) ;
 struct pci_dev* xen_pcibk_get_pci_dev (struct xen_pcibk_device*,int,int,int ) ;
 int xen_pcibk_release_pci_dev (struct xen_pcibk_device*,struct pci_dev*,int) ;
 int xen_unregister_device_domain_owner (struct pci_dev*) ;

__attribute__((used)) static int xen_pcibk_remove_device(struct xen_pcibk_device *pdev,
     int domain, int bus, int slot, int func)
{
 int err = 0;
 struct pci_dev *dev;

 dev_dbg(&pdev->xdev->dev, "removing dom %x bus %x slot %x func %x\n",
  domain, bus, slot, func);

 dev = xen_pcibk_get_pci_dev(pdev, domain, bus, PCI_DEVFN(slot, func));
 if (!dev) {
  err = -EINVAL;
  dev_dbg(&pdev->xdev->dev, "Couldn't locate PCI device "
   "(%04x:%02x:%02x.%d)! not owned by this domain\n",
   domain, bus, slot, func);
  goto out;
 }

 dev_dbg(&dev->dev, "unregistering for %d\n", pdev->xdev->otherend_id);
 xen_unregister_device_domain_owner(dev);



 xen_pcibk_release_pci_dev(pdev, dev, 1 );

out:
 return err;
}
