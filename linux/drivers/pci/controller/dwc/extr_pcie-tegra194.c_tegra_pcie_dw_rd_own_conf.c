
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pcie_port {int dummy; } ;
struct dw_pcie {scalar_t__ dbi_base; } ;


 int PCIBIOS_SUCCESSFUL ;
 int PORT_LOGIC_MSIX_DOORBELL ;
 int dw_pcie_read (scalar_t__,int,int*) ;
 struct dw_pcie* to_dw_pcie_from_pp (struct pcie_port*) ;

__attribute__((used)) static int tegra_pcie_dw_rd_own_conf(struct pcie_port *pp, int where, int size,
         u32 *val)
{
 struct dw_pcie *pci = to_dw_pcie_from_pp(pp);







 if (where == PORT_LOGIC_MSIX_DOORBELL) {
  *val = 0x00000000;
  return PCIBIOS_SUCCESSFUL;
 }

 return dw_pcie_read(pci->dbi_base + where, size, val);
}
