
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pcie_port {scalar_t__ root_bus_nr; scalar_t__ va_cfg0_base; } ;
struct pci_bus {TYPE_1__* parent; int number; } ;
struct keystone_pcie {int dummy; } ;
struct dw_pcie {int dummy; } ;
struct TYPE_2__ {scalar_t__ number; } ;


 int CFG_BUS (int ) ;
 int CFG_DEVICE (int ) ;
 int CFG_FUNC (int ) ;
 int CFG_SETUP ;
 int CFG_TYPE1 ;
 int PCI_FUNC (unsigned int) ;
 int PCI_SLOT (unsigned int) ;
 int dw_pcie_write (scalar_t__,int,int) ;
 int ks_pcie_app_writel (struct keystone_pcie*,int ,int) ;
 struct dw_pcie* to_dw_pcie_from_pp (struct pcie_port*) ;
 struct keystone_pcie* to_keystone_pcie (struct dw_pcie*) ;

__attribute__((used)) static int ks_pcie_wr_other_conf(struct pcie_port *pp, struct pci_bus *bus,
     unsigned int devfn, int where, int size,
     u32 val)
{
 struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
 struct keystone_pcie *ks_pcie = to_keystone_pcie(pci);
 u32 reg;

 reg = CFG_BUS(bus->number) | CFG_DEVICE(PCI_SLOT(devfn)) |
  CFG_FUNC(PCI_FUNC(devfn));
 if (bus->parent->number != pp->root_bus_nr)
  reg |= CFG_TYPE1;
 ks_pcie_app_writel(ks_pcie, CFG_SETUP, reg);

 return dw_pcie_write(pp->va_cfg0_base + where, size, val);
}
