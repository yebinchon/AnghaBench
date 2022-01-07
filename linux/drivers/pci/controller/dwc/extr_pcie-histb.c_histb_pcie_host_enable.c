
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_port {int dummy; } ;
struct histb_pcie {scalar_t__ vpcie; int bus_clk; int sys_clk; int pipe_clk; int bus_reset; int sys_reset; int soft_reset; int aux_clk; int reset_gpio; } ;
struct dw_pcie {struct device* dev; } ;
struct device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*,...) ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value_cansleep (int ,int) ;
 int regulator_disable (scalar_t__) ;
 int regulator_enable (scalar_t__) ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;
 struct dw_pcie* to_dw_pcie_from_pp (struct pcie_port*) ;
 struct histb_pcie* to_histb_pcie (struct dw_pcie*) ;

__attribute__((used)) static int histb_pcie_host_enable(struct pcie_port *pp)
{
 struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
 struct histb_pcie *hipcie = to_histb_pcie(pci);
 struct device *dev = pci->dev;
 int ret;


 if (hipcie->vpcie) {
  ret = regulator_enable(hipcie->vpcie);
  if (ret) {
   dev_err(dev, "failed to enable regulator: %d\n", ret);
   return ret;
  }
 }

 if (gpio_is_valid(hipcie->reset_gpio))
  gpio_set_value_cansleep(hipcie->reset_gpio, 1);

 ret = clk_prepare_enable(hipcie->bus_clk);
 if (ret) {
  dev_err(dev, "cannot prepare/enable bus clk\n");
  goto err_bus_clk;
 }

 ret = clk_prepare_enable(hipcie->sys_clk);
 if (ret) {
  dev_err(dev, "cannot prepare/enable sys clk\n");
  goto err_sys_clk;
 }

 ret = clk_prepare_enable(hipcie->pipe_clk);
 if (ret) {
  dev_err(dev, "cannot prepare/enable pipe clk\n");
  goto err_pipe_clk;
 }

 ret = clk_prepare_enable(hipcie->aux_clk);
 if (ret) {
  dev_err(dev, "cannot prepare/enable aux clk\n");
  goto err_aux_clk;
 }

 reset_control_assert(hipcie->soft_reset);
 reset_control_deassert(hipcie->soft_reset);

 reset_control_assert(hipcie->sys_reset);
 reset_control_deassert(hipcie->sys_reset);

 reset_control_assert(hipcie->bus_reset);
 reset_control_deassert(hipcie->bus_reset);

 return 0;

err_aux_clk:
 clk_disable_unprepare(hipcie->pipe_clk);
err_pipe_clk:
 clk_disable_unprepare(hipcie->sys_clk);
err_sys_clk:
 clk_disable_unprepare(hipcie->bus_clk);
err_bus_clk:
 if (hipcie->vpcie)
  regulator_disable(hipcie->vpcie);

 return ret;
}
