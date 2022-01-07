
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_pcie {int aclk_pcie; int aclk_perf_pcie; int hclk_pcie; int clk_pcie_pm; struct device* dev; } ;
struct device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*) ;

int rockchip_pcie_enable_clocks(struct rockchip_pcie *rockchip)
{
 struct device *dev = rockchip->dev;
 int err;

 err = clk_prepare_enable(rockchip->aclk_pcie);
 if (err) {
  dev_err(dev, "unable to enable aclk_pcie clock\n");
  return err;
 }

 err = clk_prepare_enable(rockchip->aclk_perf_pcie);
 if (err) {
  dev_err(dev, "unable to enable aclk_perf_pcie clock\n");
  goto err_aclk_perf_pcie;
 }

 err = clk_prepare_enable(rockchip->hclk_pcie);
 if (err) {
  dev_err(dev, "unable to enable hclk_pcie clock\n");
  goto err_hclk_pcie;
 }

 err = clk_prepare_enable(rockchip->clk_pcie_pm);
 if (err) {
  dev_err(dev, "unable to enable clk_pcie_pm clock\n");
  goto err_clk_pcie_pm;
 }

 return 0;

err_clk_pcie_pm:
 clk_disable_unprepare(rockchip->hclk_pcie);
err_hclk_pcie:
 clk_disable_unprepare(rockchip->aclk_perf_pcie);
err_aclk_perf_pcie:
 clk_disable_unprepare(rockchip->aclk_pcie);
 return err;
}
