
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct pci_bus {int dummy; } ;


 int PCI_CAPABILITY_LIST ;
 int PCI_CB_CAPABILITY_LIST ;



 int PCI_STATUS ;
 int PCI_STATUS_CAP_LIST ;
 int pci_bus_read_config_word (struct pci_bus*,unsigned int,int ,int*) ;

__attribute__((used)) static int __pci_bus_find_cap_start(struct pci_bus *bus,
        unsigned int devfn, u8 hdr_type)
{
 u16 status;

 pci_bus_read_config_word(bus, devfn, PCI_STATUS, &status);
 if (!(status & PCI_STATUS_CAP_LIST))
  return 0;

 switch (hdr_type) {
 case 128:
 case 130:
  return PCI_CAPABILITY_LIST;
 case 129:
  return PCI_CB_CAPABILITY_LIST;
 }

 return 0;
}
