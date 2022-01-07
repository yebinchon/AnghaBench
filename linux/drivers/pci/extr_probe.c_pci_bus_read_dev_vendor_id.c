
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {scalar_t__ vendor; int device; } ;
struct pci_bus {struct pci_dev* self; } ;


 scalar_t__ PCI_VENDOR_ID_IDT ;
 int pci_bus_generic_read_dev_vendor_id (struct pci_bus*,int,int *,int) ;
 int pci_idt_bus_quirk (struct pci_bus*,int,int *,int) ;

bool pci_bus_read_dev_vendor_id(struct pci_bus *bus, int devfn, u32 *l,
    int timeout)
{
 return pci_bus_generic_read_dev_vendor_id(bus, devfn, l, timeout);
}
