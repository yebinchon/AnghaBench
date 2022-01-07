
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct platform_device {int dummy; } ;
struct mtk_pcie {int * free_ck; int * base; struct device* dev; } ;
struct device {int dummy; } ;


 int EPROBE_DEFER ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int clk_prepare_enable (int *) ;
 int dev_err (struct device*,char*) ;
 int * devm_clk_get (struct device*,char*) ;
 int * devm_ioremap_resource (struct device*,struct resource*) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int mtk_pcie_subsys_powerup(struct mtk_pcie *pcie)
{
 struct device *dev = pcie->dev;
 struct platform_device *pdev = to_platform_device(dev);
 struct resource *regs;
 int err;


 regs = platform_get_resource_byname(pdev, IORESOURCE_MEM, "subsys");
 if (regs) {
  pcie->base = devm_ioremap_resource(dev, regs);
  if (IS_ERR(pcie->base)) {
   dev_err(dev, "failed to map shared register\n");
   return PTR_ERR(pcie->base);
  }
 }

 pcie->free_ck = devm_clk_get(dev, "free_ck");
 if (IS_ERR(pcie->free_ck)) {
  if (PTR_ERR(pcie->free_ck) == -EPROBE_DEFER)
   return -EPROBE_DEFER;

  pcie->free_ck = ((void*)0);
 }

 pm_runtime_enable(dev);
 pm_runtime_get_sync(dev);


 err = clk_prepare_enable(pcie->free_ck);
 if (err) {
  dev_err(dev, "failed to enable free_ck\n");
  goto err_free_ck;
 }

 return 0;

err_free_ck:
 pm_runtime_put_sync(dev);
 pm_runtime_disable(dev);

 return err;
}
