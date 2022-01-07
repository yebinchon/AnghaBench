
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dw_pcie {int dummy; } ;


 int PCIE_PORT_DEBUG0 ;
 int PORT_LOGIC_LTSSM_STATE_L0 ;
 int PORT_LOGIC_LTSSM_STATE_MASK ;
 int dw_pcie_readl_dbi (struct dw_pcie*,int ) ;

__attribute__((used)) static int ks_pcie_link_up(struct dw_pcie *pci)
{
 u32 val;

 val = dw_pcie_readl_dbi(pci, PCIE_PORT_DEBUG0);
 val &= PORT_LOGIC_LTSSM_STATE_MASK;
 return (val == PORT_LOGIC_LTSSM_STATE_L0);
}
