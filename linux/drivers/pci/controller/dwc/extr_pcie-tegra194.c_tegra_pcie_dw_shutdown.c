
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int msi_irq; int irq; } ;
struct TYPE_4__ {TYPE_1__ pp; } ;
struct tegra_pcie_dw {TYPE_2__ pci; int debugfs; int link_state; } ;
struct platform_device {int dummy; } ;


 int CONFIG_PCI_MSI ;
 scalar_t__ IS_ENABLED (int ) ;
 int __deinit_controller (struct tegra_pcie_dw*) ;
 int debugfs_remove_recursive (int ) ;
 int disable_irq (int ) ;
 struct tegra_pcie_dw* platform_get_drvdata (struct platform_device*) ;
 int tegra_pcie_downstream_dev_to_D0 (struct tegra_pcie_dw*) ;
 int tegra_pcie_dw_pme_turnoff (struct tegra_pcie_dw*) ;

__attribute__((used)) static void tegra_pcie_dw_shutdown(struct platform_device *pdev)
{
 struct tegra_pcie_dw *pcie = platform_get_drvdata(pdev);

 if (!pcie->link_state)
  return;

 debugfs_remove_recursive(pcie->debugfs);
 tegra_pcie_downstream_dev_to_D0(pcie);

 disable_irq(pcie->pci.pp.irq);
 if (IS_ENABLED(CONFIG_PCI_MSI))
  disable_irq(pcie->pci.pp.msi_irq);

 tegra_pcie_dw_pme_turnoff(pcie);
 __deinit_controller(pcie);
}
