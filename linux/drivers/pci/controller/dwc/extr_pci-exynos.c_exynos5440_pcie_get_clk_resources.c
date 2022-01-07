
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct exynos_pcie {TYPE_1__* clk_res; struct dw_pcie* pci; } ;
struct dw_pcie {struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {void* bus_clk; void* clk; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int dev_err (struct device*,char*) ;
 void* devm_clk_get (struct device*,char*) ;
 TYPE_1__* devm_kzalloc (struct device*,int,int ) ;

__attribute__((used)) static int exynos5440_pcie_get_clk_resources(struct exynos_pcie *ep)
{
 struct dw_pcie *pci = ep->pci;
 struct device *dev = pci->dev;

 ep->clk_res = devm_kzalloc(dev, sizeof(*ep->clk_res), GFP_KERNEL);
 if (!ep->clk_res)
  return -ENOMEM;

 ep->clk_res->clk = devm_clk_get(dev, "pcie");
 if (IS_ERR(ep->clk_res->clk)) {
  dev_err(dev, "Failed to get pcie rc clock\n");
  return PTR_ERR(ep->clk_res->clk);
 }

 ep->clk_res->bus_clk = devm_clk_get(dev, "pcie_bus");
 if (IS_ERR(ep->clk_res->bus_clk)) {
  dev_err(dev, "Failed to get pcie bus clock\n");
  return PTR_ERR(ep->clk_res->bus_clk);
 }

 return 0;
}
