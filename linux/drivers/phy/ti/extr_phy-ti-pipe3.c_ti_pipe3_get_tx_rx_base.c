
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_pipe3 {void* phy_tx; void* phy_rx; struct device* dev; } ;
struct resource {int dummy; } ;
struct platform_device {int dummy; } ;
struct device {int dummy; } ;


 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int PTR_ERR_OR_ZERO (void*) ;
 void* devm_ioremap_resource (struct device*,struct resource*) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int ti_pipe3_get_tx_rx_base(struct ti_pipe3 *phy)
{
 struct resource *res;
 struct device *dev = phy->dev;
 struct platform_device *pdev = to_platform_device(dev);

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
        "phy_rx");
 phy->phy_rx = devm_ioremap_resource(dev, res);
 if (IS_ERR(phy->phy_rx))
  return PTR_ERR(phy->phy_rx);

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
        "phy_tx");
 phy->phy_tx = devm_ioremap_resource(dev, res);

 return PTR_ERR_OR_ZERO(phy->phy_tx);
}
