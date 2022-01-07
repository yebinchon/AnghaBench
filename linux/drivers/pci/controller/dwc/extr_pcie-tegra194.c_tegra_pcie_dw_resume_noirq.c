
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pp; } ;
struct tegra_pcie_dw {int msi_ctrl_int; TYPE_1__ pci; int link_state; } ;
struct device {int dummy; } ;


 int PORT_LOGIC_MSI_CTRL_INT_0_EN ;
 int __deinit_controller (struct tegra_pcie_dw*) ;
 int dev_err (struct device*,char*,int) ;
 struct tegra_pcie_dw* dev_get_drvdata (struct device*) ;
 int dw_pcie_writel_dbi (TYPE_1__*,int ,int ) ;
 int tegra_pcie_config_controller (struct tegra_pcie_dw*,int) ;
 int tegra_pcie_dw_host_init (int *) ;

__attribute__((used)) static int tegra_pcie_dw_resume_noirq(struct device *dev)
{
 struct tegra_pcie_dw *pcie = dev_get_drvdata(dev);
 int ret;

 if (!pcie->link_state)
  return 0;

 ret = tegra_pcie_config_controller(pcie, 1);
 if (ret < 0)
  return ret;

 ret = tegra_pcie_dw_host_init(&pcie->pci.pp);
 if (ret < 0) {
  dev_err(dev, "Failed to init host: %d\n", ret);
  goto fail_host_init;
 }


 dw_pcie_writel_dbi(&pcie->pci, PORT_LOGIC_MSI_CTRL_INT_0_EN,
      pcie->msi_ctrl_int);

 return 0;

fail_host_init:
 return __deinit_controller(pcie);
}
