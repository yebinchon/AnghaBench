
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_pcie_dw {int dummy; } ;
typedef int irqreturn_t ;


 int tegra_pcie_rp_irq_handler (struct tegra_pcie_dw*) ;

__attribute__((used)) static irqreturn_t tegra_pcie_irq_handler(int irq, void *arg)
{
 struct tegra_pcie_dw *pcie = arg;

 return tegra_pcie_rp_irq_handler(pcie);
}
