
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spear13xx_pcie {struct pcie_app_reg* app_base; struct dw_pcie* pci; } ;
struct pcie_port {int dummy; } ;
struct pcie_app_reg {int int_mask; } ;
struct dw_pcie {struct pcie_port pp; } ;


 int CONFIG_PCI_MSI ;
 scalar_t__ IS_ENABLED (int ) ;
 int MSI_CTRL_INT ;
 int dw_pcie_msi_init (struct pcie_port*) ;
 int readl (int *) ;
 int writel (int,int *) ;

__attribute__((used)) static void spear13xx_pcie_enable_interrupts(struct spear13xx_pcie *spear13xx_pcie)
{
 struct dw_pcie *pci = spear13xx_pcie->pci;
 struct pcie_port *pp = &pci->pp;
 struct pcie_app_reg *app_reg = spear13xx_pcie->app_base;


 if (IS_ENABLED(CONFIG_PCI_MSI)) {
  dw_pcie_msi_init(pp);
  writel(readl(&app_reg->int_mask) |
    MSI_CTRL_INT, &app_reg->int_mask);
 }
}
