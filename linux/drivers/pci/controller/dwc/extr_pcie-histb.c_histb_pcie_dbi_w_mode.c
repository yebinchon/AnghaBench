
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pcie_port {int dummy; } ;
struct histb_pcie {int dummy; } ;
struct dw_pcie {int dummy; } ;


 int PCIE_ELBI_SLV_DBI_ENABLE ;
 int PCIE_SYS_CTRL0 ;
 int histb_pcie_readl (struct histb_pcie*,int ) ;
 int histb_pcie_writel (struct histb_pcie*,int ,int ) ;
 struct dw_pcie* to_dw_pcie_from_pp (struct pcie_port*) ;
 struct histb_pcie* to_histb_pcie (struct dw_pcie*) ;

__attribute__((used)) static void histb_pcie_dbi_w_mode(struct pcie_port *pp, bool enable)
{
 struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
 struct histb_pcie *hipcie = to_histb_pcie(pci);
 u32 val;

 val = histb_pcie_readl(hipcie, PCIE_SYS_CTRL0);
 if (enable)
  val |= PCIE_ELBI_SLV_DBI_ENABLE;
 else
  val &= ~PCIE_ELBI_SLV_DBI_ENABLE;
 histb_pcie_writel(hipcie, PCIE_SYS_CTRL0, val);
}
