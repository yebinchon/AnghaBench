
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rcar_pcie {int root_bus_nr; } ;
struct pci_bus {TYPE_1__* parent; int number; } ;
struct TYPE_2__ {int number; } ;


 int CONFIG_SEND_ENABLE ;
 int PCIBIOS_DEVICE_NOT_FOUND ;
 int PCIBIOS_SUCCESSFUL ;
 int PCICONF (unsigned int) ;
 int PCIECAR ;
 int PCIECCTLR ;
 int PCIECDR ;
 int PCIEERRFR ;
 unsigned int PCIE_CONF_BUS (int ) ;
 unsigned int PCIE_CONF_DEV (unsigned int) ;
 unsigned int PCIE_CONF_FUNC (unsigned int) ;
 unsigned int PCI_FUNC (unsigned int) ;
 unsigned int PCI_PRIMARY_BUS ;
 unsigned int PCI_SLOT (unsigned int) ;
 int PCI_STATUS ;
 int PCI_STATUS_REC_MASTER_ABORT ;
 int PCI_STATUS_REC_TARGET_ABORT ;
 unsigned char RCAR_PCI_ACCESS_READ ;
 int RCONF (int ) ;
 int TYPE0 ;
 int TYPE1 ;
 int UNSUPPORTED_REQUEST ;
 scalar_t__ pci_is_root_bus (struct pci_bus*) ;
 int rcar_pci_read_reg (struct rcar_pcie*,int ) ;
 int rcar_pci_write_reg (struct rcar_pcie*,int,int ) ;
 int rcar_read_conf (struct rcar_pcie*,int ) ;

__attribute__((used)) static int rcar_pcie_config_access(struct rcar_pcie *pcie,
  unsigned char access_type, struct pci_bus *bus,
  unsigned int devfn, int where, u32 *data)
{
 unsigned int dev, func, reg, index;

 dev = PCI_SLOT(devfn);
 func = PCI_FUNC(devfn);
 reg = where & ~3;
 index = reg / 4;
 if (pci_is_root_bus(bus)) {
  if (dev != 0)
   return PCIBIOS_DEVICE_NOT_FOUND;

  if (access_type == RCAR_PCI_ACCESS_READ) {
   *data = rcar_pci_read_reg(pcie, PCICONF(index));
  } else {

   if (pci_is_root_bus(bus) && (reg == PCI_PRIMARY_BUS))
    pcie->root_bus_nr = *data & 0xff;

   rcar_pci_write_reg(pcie, *data, PCICONF(index));
  }

  return PCIBIOS_SUCCESSFUL;
 }

 if (pcie->root_bus_nr < 0)
  return PCIBIOS_DEVICE_NOT_FOUND;


 rcar_pci_write_reg(pcie, rcar_pci_read_reg(pcie, PCIEERRFR), PCIEERRFR);


 rcar_pci_write_reg(pcie, PCIE_CONF_BUS(bus->number) |
  PCIE_CONF_DEV(dev) | PCIE_CONF_FUNC(func) | reg, PCIECAR);


 if (bus->parent->number == pcie->root_bus_nr)
  rcar_pci_write_reg(pcie, CONFIG_SEND_ENABLE | TYPE0, PCIECCTLR);
 else
  rcar_pci_write_reg(pcie, CONFIG_SEND_ENABLE | TYPE1, PCIECCTLR);


 if (rcar_pci_read_reg(pcie, PCIEERRFR) & UNSUPPORTED_REQUEST)
  return PCIBIOS_DEVICE_NOT_FOUND;


 if (rcar_read_conf(pcie, RCONF(PCI_STATUS)) &
  (PCI_STATUS_REC_MASTER_ABORT | PCI_STATUS_REC_TARGET_ABORT))
  return PCIBIOS_DEVICE_NOT_FOUND;

 if (access_type == RCAR_PCI_ACCESS_READ)
  *data = rcar_pci_read_reg(pcie, PCIECDR);
 else
  rcar_pci_write_reg(pcie, *data, PCIECDR);


 rcar_pci_write_reg(pcie, 0, PCIECCTLR);

 return PCIBIOS_SUCCESSFUL;
}
