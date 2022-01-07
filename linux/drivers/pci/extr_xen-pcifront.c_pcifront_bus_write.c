
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct xen_pci_op {unsigned int devfn; int offset; int size; int value; int bus; int domain; int cmd; } ;
struct pcifront_sd {int dummy; } ;
struct pcifront_device {TYPE_1__* xdev; } ;
struct pci_bus {int number; struct pcifront_sd* sysdata; } ;
struct TYPE_2__ {int dev; } ;


 int PCI_FUNC (unsigned int) ;
 int PCI_SLOT (unsigned int) ;
 int XEN_PCI_OP_conf_write ;
 int dev_info (int *,char*,int ,int ,int ,int ,int,int,int ) ;
 int do_pci_op (struct pcifront_device*,struct xen_pci_op*) ;
 int errno_to_pcibios_err (int ) ;
 int pci_domain_nr (struct pci_bus*) ;
 struct pcifront_device* pcifront_get_pdev (struct pcifront_sd*) ;
 scalar_t__ verbose_request ;

__attribute__((used)) static int pcifront_bus_write(struct pci_bus *bus, unsigned int devfn,
         int where, int size, u32 val)
{
 struct xen_pci_op op = {
  .cmd = XEN_PCI_OP_conf_write,
  .domain = pci_domain_nr(bus),
  .bus = bus->number,
  .devfn = devfn,
  .offset = where,
  .size = size,
  .value = val,
 };
 struct pcifront_sd *sd = bus->sysdata;
 struct pcifront_device *pdev = pcifront_get_pdev(sd);

 if (verbose_request)
  dev_info(&pdev->xdev->dev,
    "write dev=%04x:%02x:%02x.%d - "
    "offset %x size %d val %x\n",
    pci_domain_nr(bus), bus->number,
    PCI_SLOT(devfn), PCI_FUNC(devfn), where, size, val);

 return errno_to_pcibios_err(do_pci_op(pdev, &op));
}
