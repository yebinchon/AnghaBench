
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_pcie_dw {int bpmp; int dev; int debugfs; int link_state; } ;
struct platform_device {int dummy; } ;


 int debugfs_remove_recursive (int ) ;
 struct tegra_pcie_dw* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int ) ;
 int pm_runtime_put_sync (int ) ;
 int tegra_bpmp_put (int ) ;
 int tegra_pcie_deinit_controller (struct tegra_pcie_dw*) ;

__attribute__((used)) static int tegra_pcie_dw_remove(struct platform_device *pdev)
{
 struct tegra_pcie_dw *pcie = platform_get_drvdata(pdev);

 if (!pcie->link_state)
  return 0;

 debugfs_remove_recursive(pcie->debugfs);
 tegra_pcie_deinit_controller(pcie);
 pm_runtime_put_sync(pcie->dev);
 pm_runtime_disable(pcie->dev);
 tegra_bpmp_put(pcie->bpmp);

 return 0;
}
