
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int number; } ;


 int PCI_FUNC (int) ;
 int PCI_SLOT (int) ;
 int msleep (int) ;
 int pci_bus_read_dev_vendor_id (struct pci_bus*,int,int *,int ) ;
 int pci_domain_nr (struct pci_bus*) ;
 int pr_debug (char*,int ,int ,int ,int ,int,int,int ) ;

__attribute__((used)) static bool pci_bus_check_dev(struct pci_bus *bus, int devfn)
{
 u32 l;
 int count = 0;
 int delay = 1000, step = 20;
 bool found = 0;

 do {
  found = pci_bus_read_dev_vendor_id(bus, devfn, &l, 0);
  count++;

  if (found)
   break;

  msleep(step);
  delay -= step;
 } while (delay > 0);

 if (count > 1)
  pr_debug("pci %04x:%02x:%02x.%d id reading try %d times with interval %d ms to get %08x\n",
   pci_domain_nr(bus), bus->number, PCI_SLOT(devfn),
   PCI_FUNC(devfn), count, step, l);

 return found;
}
