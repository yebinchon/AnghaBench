
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct platform_device {int dummy; } ;
struct exynos_pcie {TYPE_1__* mem_res; struct dw_pcie* pci; } ;
struct dw_pcie {struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int elbi_base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 TYPE_1__* devm_kzalloc (struct device*,int,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;

__attribute__((used)) static int exynos5440_pcie_get_mem_resources(struct platform_device *pdev,
          struct exynos_pcie *ep)
{
 struct dw_pcie *pci = ep->pci;
 struct device *dev = pci->dev;
 struct resource *res;

 ep->mem_res = devm_kzalloc(dev, sizeof(*ep->mem_res), GFP_KERNEL);
 if (!ep->mem_res)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 ep->mem_res->elbi_base = devm_ioremap_resource(dev, res);
 if (IS_ERR(ep->mem_res->elbi_base))
  return PTR_ERR(ep->mem_res->elbi_base);

 return 0;
}
