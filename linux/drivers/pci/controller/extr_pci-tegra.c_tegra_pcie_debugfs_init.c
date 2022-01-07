
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_pcie {int debugfs; } ;
struct dentry {int dummy; } ;


 int ENOMEM ;
 int S_IFREG ;
 int S_IRUGO ;
 int debugfs_create_dir (char*,int *) ;
 struct dentry* debugfs_create_file (char*,int,int ,struct tegra_pcie*,int *) ;
 int tegra_pcie_debugfs_exit (struct tegra_pcie*) ;
 int tegra_pcie_ports_ops ;

__attribute__((used)) static int tegra_pcie_debugfs_init(struct tegra_pcie *pcie)
{
 struct dentry *file;

 pcie->debugfs = debugfs_create_dir("pcie", ((void*)0));
 if (!pcie->debugfs)
  return -ENOMEM;

 file = debugfs_create_file("ports", S_IFREG | S_IRUGO, pcie->debugfs,
       pcie, &tegra_pcie_ports_ops);
 if (!file)
  goto remove;

 return 0;

remove:
 tegra_pcie_debugfs_exit(pcie);
 return -ENOMEM;
}
