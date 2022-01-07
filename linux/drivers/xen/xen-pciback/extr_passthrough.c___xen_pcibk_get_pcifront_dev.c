
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xen_pcibk_device {int dummy; } ;
struct pci_dev {unsigned int devfn; TYPE_1__* bus; } ;
struct TYPE_2__ {unsigned int number; } ;


 unsigned int pci_domain_nr (TYPE_1__*) ;

__attribute__((used)) static int __xen_pcibk_get_pcifront_dev(struct pci_dev *pcidev,
     struct xen_pcibk_device *pdev,
     unsigned int *domain, unsigned int *bus,
     unsigned int *devfn)
{
 *domain = pci_domain_nr(pcidev->bus);
 *bus = pcidev->bus->number;
 *devfn = pcidev->devfn;
 return 1;
}
