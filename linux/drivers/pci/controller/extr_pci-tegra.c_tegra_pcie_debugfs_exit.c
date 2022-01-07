
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_pcie {int * debugfs; } ;


 int debugfs_remove_recursive (int *) ;

__attribute__((used)) static void tegra_pcie_debugfs_exit(struct tegra_pcie *pcie)
{
 debugfs_remove_recursive(pcie->debugfs);
 pcie->debugfs = ((void*)0);
}
