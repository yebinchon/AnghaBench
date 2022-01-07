
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xen_pcibk_device {int dummy; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {struct pci_dev* (* get ) (struct xen_pcibk_device*,unsigned int,unsigned int,unsigned int) ;} ;


 struct pci_dev* stub1 (struct xen_pcibk_device*,unsigned int,unsigned int,unsigned int) ;
 TYPE_1__* xen_pcibk_backend ;

__attribute__((used)) static inline struct pci_dev *
xen_pcibk_get_pci_dev(struct xen_pcibk_device *pdev, unsigned int domain,
        unsigned int bus, unsigned int devfn)
{
 if (xen_pcibk_backend && xen_pcibk_backend->get)
  return xen_pcibk_backend->get(pdev, domain, bus, devfn);
 return ((void*)0);
}
