
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xen_pcibk_device {TYPE_1__* xdev; } ;
typedef int str ;
struct TYPE_2__ {int nodename; } ;


 int ENOMEM ;
 int PCI_FUNC (unsigned int) ;
 int PCI_SLOT (unsigned int) ;
 int XBT_NIL ;
 int snprintf (char*,int,char*,unsigned int) ;
 scalar_t__ unlikely (int) ;
 int xenbus_printf (int ,int ,char*,char*,unsigned int,unsigned int,int ,int ) ;

__attribute__((used)) static int xen_pcibk_publish_pci_dev(struct xen_pcibk_device *pdev,
       unsigned int domain, unsigned int bus,
       unsigned int devfn, unsigned int devid)
{
 int err;
 int len;
 char str[64];

 len = snprintf(str, sizeof(str), "vdev-%d", devid);
 if (unlikely(len >= (sizeof(str) - 1))) {
  err = -ENOMEM;
  goto out;
 }


 err = xenbus_printf(XBT_NIL, pdev->xdev->nodename, str,
       "%04x:%02x:%02x.%02x", domain, bus,
       PCI_SLOT(devfn), PCI_FUNC(devfn));

out:
 return err;
}
