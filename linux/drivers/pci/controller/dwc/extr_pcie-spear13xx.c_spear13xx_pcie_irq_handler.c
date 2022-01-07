
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spear13xx_pcie {struct dw_pcie* pci; struct pcie_app_reg* app_base; } ;
struct pcie_port {int dummy; } ;
struct pcie_app_reg {int int_clr; int int_sts; } ;
struct dw_pcie {struct pcie_port pp; } ;
typedef int irqreturn_t ;


 int BUG_ON (int) ;
 int CONFIG_PCI_MSI ;
 int IRQ_HANDLED ;
 int IS_ENABLED (int ) ;
 unsigned int MSI_CTRL_INT ;
 int dw_handle_msi_irq (struct pcie_port*) ;
 unsigned int readl (int *) ;
 int writel (unsigned int,int *) ;

__attribute__((used)) static irqreturn_t spear13xx_pcie_irq_handler(int irq, void *arg)
{
 struct spear13xx_pcie *spear13xx_pcie = arg;
 struct pcie_app_reg *app_reg = spear13xx_pcie->app_base;
 struct dw_pcie *pci = spear13xx_pcie->pci;
 struct pcie_port *pp = &pci->pp;
 unsigned int status;

 status = readl(&app_reg->int_sts);

 if (status & MSI_CTRL_INT) {
  BUG_ON(!IS_ENABLED(CONFIG_PCI_MSI));
  dw_handle_msi_irq(pp);
 }

 writel(status, &app_reg->int_clr);

 return IRQ_HANDLED;
}
