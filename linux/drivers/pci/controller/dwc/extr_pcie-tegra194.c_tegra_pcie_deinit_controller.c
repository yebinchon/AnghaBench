
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pp; } ;
struct tegra_pcie_dw {TYPE_1__ pci; } ;


 int __deinit_controller (struct tegra_pcie_dw*) ;
 int dw_pcie_host_deinit (int *) ;
 int tegra_pcie_downstream_dev_to_D0 (struct tegra_pcie_dw*) ;
 int tegra_pcie_dw_pme_turnoff (struct tegra_pcie_dw*) ;

__attribute__((used)) static int tegra_pcie_deinit_controller(struct tegra_pcie_dw *pcie)
{
 tegra_pcie_downstream_dev_to_D0(pcie);
 dw_pcie_host_deinit(&pcie->pci.pp);
 tegra_pcie_dw_pme_turnoff(pcie);

 return __deinit_controller(pcie);
}
