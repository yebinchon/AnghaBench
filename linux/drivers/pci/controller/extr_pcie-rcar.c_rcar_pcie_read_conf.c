
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rcar_pcie {int dummy; } ;
struct pci_bus {int number; int dev; struct rcar_pcie* sysdata; } ;


 int BITS_PER_BYTE ;
 int PCIBIOS_SUCCESSFUL ;
 int RCAR_PCI_ACCESS_READ ;
 int dev_dbg (int *,char*,int ,unsigned int,int,int,int) ;
 int rcar_pcie_config_access (struct rcar_pcie*,int ,struct pci_bus*,unsigned int,int,int*) ;

__attribute__((used)) static int rcar_pcie_read_conf(struct pci_bus *bus, unsigned int devfn,
          int where, int size, u32 *val)
{
 struct rcar_pcie *pcie = bus->sysdata;
 int ret;

 ret = rcar_pcie_config_access(pcie, RCAR_PCI_ACCESS_READ,
          bus, devfn, where, val);
 if (ret != PCIBIOS_SUCCESSFUL) {
  *val = 0xffffffff;
  return ret;
 }

 if (size == 1)
  *val = (*val >> (BITS_PER_BYTE * (where & 3))) & 0xff;
 else if (size == 2)
  *val = (*val >> (BITS_PER_BYTE * (where & 2))) & 0xffff;

 dev_dbg(&bus->dev, "pcie-config-read: bus=%3d devfn=0x%04x where=0x%04x size=%d val=0x%08x\n",
  bus->number, devfn, where, size, *val);

 return ret;
}
