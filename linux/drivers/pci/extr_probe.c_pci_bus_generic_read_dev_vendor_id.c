
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int dummy; } ;


 int PCI_VENDOR_ID ;
 scalar_t__ pci_bus_crs_vendor_id (int) ;
 scalar_t__ pci_bus_read_config_dword (struct pci_bus*,int,int ,int*) ;
 int pci_bus_wait_crs (struct pci_bus*,int,int*,int) ;

bool pci_bus_generic_read_dev_vendor_id(struct pci_bus *bus, int devfn, u32 *l,
     int timeout)
{
 if (pci_bus_read_config_dword(bus, devfn, PCI_VENDOR_ID, l))
  return 0;


 if (*l == 0xffffffff || *l == 0x00000000 ||
     *l == 0x0000ffff || *l == 0xffff0000)
  return 0;

 if (pci_bus_crs_vendor_id(*l))
  return pci_bus_wait_crs(bus, devfn, l, timeout);

 return 1;
}
