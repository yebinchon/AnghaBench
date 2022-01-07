
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xen_pcibk_device {int dummy; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {void (* release ) (struct xen_pcibk_device*,struct pci_dev*,int) ;} ;


 void stub1 (struct xen_pcibk_device*,struct pci_dev*,int) ;
 TYPE_1__* xen_pcibk_backend ;

__attribute__((used)) static inline void xen_pcibk_release_pci_dev(struct xen_pcibk_device *pdev,
          struct pci_dev *dev, bool lock)
{
 if (xen_pcibk_backend && xen_pcibk_backend->release)
  return xen_pcibk_backend->release(pdev, dev, lock);
}
