
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xen_pcibk_device {int dummy; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int (* find ) (struct pci_dev*,struct xen_pcibk_device*,unsigned int*,unsigned int*,unsigned int*) ;} ;


 int stub1 (struct pci_dev*,struct xen_pcibk_device*,unsigned int*,unsigned int*,unsigned int*) ;
 TYPE_1__* xen_pcibk_backend ;

__attribute__((used)) static inline int xen_pcibk_get_pcifront_dev(struct pci_dev *pcidev,
          struct xen_pcibk_device *pdev,
          unsigned int *domain,
          unsigned int *bus,
          unsigned int *devfn)
{
 if (xen_pcibk_backend && xen_pcibk_backend->find)
  return xen_pcibk_backend->find(pcidev, pdev, domain, bus,
            devfn);
 return -1;
}
