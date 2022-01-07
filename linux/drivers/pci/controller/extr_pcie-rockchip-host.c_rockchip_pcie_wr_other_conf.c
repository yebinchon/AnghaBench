
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct rockchip_pcie {scalar_t__ root_bus_nr; scalar_t__ reg_base; } ;
struct pci_bus {TYPE_1__* parent; int number; } ;
struct TYPE_2__ {scalar_t__ number; } ;


 int AXI_WRAPPER_TYPE0_CFG ;
 int AXI_WRAPPER_TYPE1_CFG ;
 int IS_ALIGNED (scalar_t__,int) ;
 int PCIBIOS_BAD_REGISTER_NUMBER ;
 int PCIBIOS_SUCCESSFUL ;
 scalar_t__ PCIE_ECAM_ADDR (int ,int ,int ,int) ;
 int PCI_FUNC (scalar_t__) ;
 int PCI_SLOT (scalar_t__) ;
 int rockchip_pcie_cfg_configuration_accesses (struct rockchip_pcie*,int ) ;
 int writeb (scalar_t__,scalar_t__) ;
 int writel (scalar_t__,scalar_t__) ;
 int writew (scalar_t__,scalar_t__) ;

__attribute__((used)) static int rockchip_pcie_wr_other_conf(struct rockchip_pcie *rockchip,
           struct pci_bus *bus, u32 devfn,
           int where, int size, u32 val)
{
 u32 busdev;

 busdev = PCIE_ECAM_ADDR(bus->number, PCI_SLOT(devfn),
    PCI_FUNC(devfn), where);
 if (!IS_ALIGNED(busdev, size))
  return PCIBIOS_BAD_REGISTER_NUMBER;

 if (bus->parent->number == rockchip->root_bus_nr)
  rockchip_pcie_cfg_configuration_accesses(rockchip,
      AXI_WRAPPER_TYPE0_CFG);
 else
  rockchip_pcie_cfg_configuration_accesses(rockchip,
      AXI_WRAPPER_TYPE1_CFG);

 if (size == 4)
  writel(val, rockchip->reg_base + busdev);
 else if (size == 2)
  writew(val, rockchip->reg_base + busdev);
 else if (size == 1)
  writeb(val, rockchip->reg_base + busdev);
 else
  return PCIBIOS_BAD_REGISTER_NUMBER;

 return PCIBIOS_SUCCESSFUL;
}
