
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int number; } ;


 int PCI_FUNC (int) ;
 int PCI_SLOT (int) ;
 int PCI_VENDOR_ID ;
 int msleep (int) ;
 scalar_t__ pci_bus_crs_vendor_id (int ) ;
 scalar_t__ pci_bus_read_config_dword (struct pci_bus*,int,int ,int *) ;
 int pci_domain_nr (struct pci_bus*) ;
 int pr_info (char*,int ,int ,int ,int ,int) ;
 int pr_warn (char*,int ,int ,int ,int ,int) ;

__attribute__((used)) static bool pci_bus_wait_crs(struct pci_bus *bus, int devfn, u32 *l,
        int timeout)
{
 int delay = 1;

 if (!pci_bus_crs_vendor_id(*l))
  return 1;

 if (!timeout)
  return 0;






 while (pci_bus_crs_vendor_id(*l)) {
  if (delay > timeout) {
   pr_warn("pci %04x:%02x:%02x.%d: not ready after %dms; giving up\n",
    pci_domain_nr(bus), bus->number,
    PCI_SLOT(devfn), PCI_FUNC(devfn), delay - 1);

   return 0;
  }
  if (delay >= 1000)
   pr_info("pci %04x:%02x:%02x.%d: not ready after %dms; waiting\n",
    pci_domain_nr(bus), bus->number,
    PCI_SLOT(devfn), PCI_FUNC(devfn), delay - 1);

  msleep(delay);
  delay *= 2;

  if (pci_bus_read_config_dword(bus, devfn, PCI_VENDOR_ID, l))
   return 0;
 }

 if (delay >= 1000)
  pr_info("pci %04x:%02x:%02x.%d: ready after %dms\n",
   pci_domain_nr(bus), bus->number,
   PCI_SLOT(devfn), PCI_FUNC(devfn), delay - 1);

 return 1;
}
