
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int number; int dev; struct faraday_pci* sysdata; } ;
struct faraday_pci {int dummy; } ;


 int PCI_FUNC (unsigned int) ;
 int PCI_SLOT (unsigned int) ;
 int dev_dbg (int *,char*,int ,int ,int,int,int ) ;
 int faraday_raw_pci_read_config (struct faraday_pci*,int ,unsigned int,int,int,int *) ;

__attribute__((used)) static int faraday_pci_read_config(struct pci_bus *bus, unsigned int fn,
       int config, int size, u32 *value)
{
 struct faraday_pci *p = bus->sysdata;

 dev_dbg(&bus->dev,
  "[read]  slt: %.2d, fnc: %d, cnf: 0x%.2X, val (%d bytes): 0x%.8X\n",
  PCI_SLOT(fn), PCI_FUNC(fn), config, size, *value);

 return faraday_raw_pci_read_config(p, bus->number, fn, config, size, value);
}
