
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xen_pcibk_device {int dummy; } ;
struct pci_dev {int dummy; } ;
typedef int publish_pci_dev_cb ;
struct TYPE_2__ {int (* add ) (struct xen_pcibk_device*,struct pci_dev*,int,int ) ;} ;


 int stub1 (struct xen_pcibk_device*,struct pci_dev*,int,int ) ;
 TYPE_1__* xen_pcibk_backend ;

__attribute__((used)) static inline int xen_pcibk_add_pci_dev(struct xen_pcibk_device *pdev,
     struct pci_dev *dev,
     int devid,
     publish_pci_dev_cb publish_cb)
{
 if (xen_pcibk_backend && xen_pcibk_backend->add)
  return xen_pcibk_backend->add(pdev, dev, devid, publish_cb);
 return -1;
}
