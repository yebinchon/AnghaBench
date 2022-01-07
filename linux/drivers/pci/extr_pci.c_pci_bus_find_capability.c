
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_bus {int dummy; } ;


 int PCI_HEADER_TYPE ;
 int __pci_bus_find_cap_start (struct pci_bus*,unsigned int,int) ;
 int __pci_find_next_cap (struct pci_bus*,unsigned int,int,int) ;
 int pci_bus_read_config_byte (struct pci_bus*,unsigned int,int ,int*) ;

int pci_bus_find_capability(struct pci_bus *bus, unsigned int devfn, int cap)
{
 int pos;
 u8 hdr_type;

 pci_bus_read_config_byte(bus, devfn, PCI_HEADER_TYPE, &hdr_type);

 pos = __pci_bus_find_cap_start(bus, devfn, hdr_type & 0x7f);
 if (pos)
  pos = __pci_find_next_cap(bus, devfn, pos, cap);

 return pos;
}
