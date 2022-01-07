
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcie_port {int msi_irq; } ;
struct TYPE_2__ {struct pcie_port pp; } ;
struct tegra_pcie_dw {int debugfs; int link_state; TYPE_1__ pci; struct device* dev; } ;
struct device {int of_node; } ;


 int CONFIG_PCI_MSI ;
 int ENODEV ;
 int ENOMEDIUM ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ENABLED (int ) ;
 int debugfs_create_dir (char*,int *) ;
 int dev_err (struct device*,char*,...) ;
 char* devm_kasprintf (struct device*,int ,char*,int ) ;
 int init_debugfs (struct tegra_pcie_dw*) ;
 int of_irq_get_byname (int ,char*) ;
 int pinctrl_pm_select_default_state (struct device*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;
 int tegra_pcie_deinit_controller (struct tegra_pcie_dw*) ;
 int tegra_pcie_dw_link_up (TYPE_1__*) ;
 int tegra_pcie_init_controller (struct tegra_pcie_dw*) ;

__attribute__((used)) static int tegra_pcie_config_rp(struct tegra_pcie_dw *pcie)
{
 struct pcie_port *pp = &pcie->pci.pp;
 struct device *dev = pcie->dev;
 char *name;
 int ret;

 if (IS_ENABLED(CONFIG_PCI_MSI)) {
  pp->msi_irq = of_irq_get_byname(dev->of_node, "msi");
  if (!pp->msi_irq) {
   dev_err(dev, "Failed to get MSI interrupt\n");
   return -ENODEV;
  }
 }

 pm_runtime_enable(dev);

 ret = pm_runtime_get_sync(dev);
 if (ret < 0) {
  dev_err(dev, "Failed to get runtime sync for PCIe dev: %d\n",
   ret);
  goto fail_pm_get_sync;
 }

 ret = pinctrl_pm_select_default_state(dev);
 if (ret < 0) {
  dev_err(dev, "Failed to configure sideband pins: %d\n", ret);
  goto fail_pinctrl;
 }

 tegra_pcie_init_controller(pcie);

 pcie->link_state = tegra_pcie_dw_link_up(&pcie->pci);
 if (!pcie->link_state) {
  ret = -ENOMEDIUM;
  goto fail_host_init;
 }

 name = devm_kasprintf(dev, GFP_KERNEL, "%pOFP", dev->of_node);
 if (!name) {
  ret = -ENOMEM;
  goto fail_host_init;
 }

 pcie->debugfs = debugfs_create_dir(name, ((void*)0));
 if (!pcie->debugfs)
  dev_err(dev, "Failed to create debugfs\n");
 else
  init_debugfs(pcie);

 return ret;

fail_host_init:
 tegra_pcie_deinit_controller(pcie);
fail_pinctrl:
 pm_runtime_put_sync(dev);
fail_pm_get_sync:
 pm_runtime_disable(dev);
 return ret;
}
