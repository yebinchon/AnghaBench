
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct exynos_pcie {TYPE_1__* clk_res; struct dw_pcie* pci; } ;
struct dw_pcie {struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int clk; int bus_clk; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*) ;

__attribute__((used)) static int exynos5440_pcie_init_clk_resources(struct exynos_pcie *ep)
{
 struct dw_pcie *pci = ep->pci;
 struct device *dev = pci->dev;
 int ret;

 ret = clk_prepare_enable(ep->clk_res->clk);
 if (ret) {
  dev_err(dev, "cannot enable pcie rc clock");
  return ret;
 }

 ret = clk_prepare_enable(ep->clk_res->bus_clk);
 if (ret) {
  dev_err(dev, "cannot enable pcie bus clock");
  goto err_bus_clk;
 }

 return 0;

err_bus_clk:
 clk_disable_unprepare(ep->clk_res->clk);

 return ret;
}
