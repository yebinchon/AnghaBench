
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct rcar_gen3_usb3 {int usb3s_clk; int usb_extal; struct phy_provider* phy; int ssc_range; struct phy_provider* base; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
typedef struct phy_provider clk ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct phy_provider*) ;
 int PTR_ERR (struct phy_provider*) ;
 int clk_disable_unprepare (struct phy_provider*) ;
 int clk_get_rate (struct phy_provider*) ;
 int clk_prepare_enable (struct phy_provider*) ;
 int dev_err (struct device*,char*) ;
 struct phy_provider* devm_clk_get (struct device*,char*) ;
 struct phy_provider* devm_ioremap_resource (struct device*,struct resource*) ;
 struct rcar_gen3_usb3* devm_kzalloc (struct device*,int,int ) ;
 struct phy_provider* devm_of_phy_provider_register (struct device*,int ) ;
 struct phy_provider* devm_phy_create (struct device*,int *,int *) ;
 int of_phy_simple_xlate ;
 int of_property_read_u32 (int ,char*,int *) ;
 int phy_set_drvdata (struct phy_provider*,struct rcar_gen3_usb3*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct rcar_gen3_usb3*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int rcar_gen3_phy_usb3_ops ;

__attribute__((used)) static int rcar_gen3_phy_usb3_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct rcar_gen3_usb3 *r;
 struct phy_provider *provider;
 struct resource *res;
 int ret = 0;
 struct clk *clk;

 if (!dev->of_node) {
  dev_err(dev, "This driver needs device tree\n");
  return -EINVAL;
 }

 r = devm_kzalloc(dev, sizeof(*r), GFP_KERNEL);
 if (!r)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 r->base = devm_ioremap_resource(dev, res);
 if (IS_ERR(r->base))
  return PTR_ERR(r->base);

 clk = devm_clk_get(dev, "usb3s_clk");
 if (!IS_ERR(clk) && !clk_prepare_enable(clk)) {
  r->usb3s_clk = !!clk_get_rate(clk);
  clk_disable_unprepare(clk);
 }
 clk = devm_clk_get(dev, "usb_extal");
 if (!IS_ERR(clk) && !clk_prepare_enable(clk)) {
  r->usb_extal = !!clk_get_rate(clk);
  clk_disable_unprepare(clk);
 }

 if (!r->usb3s_clk && !r->usb_extal) {
  dev_err(dev, "This driver needs usb3s_clk and/or usb_extal\n");
  ret = -EINVAL;
  goto error;
 }





 pm_runtime_enable(dev);

 r->phy = devm_phy_create(dev, ((void*)0), &rcar_gen3_phy_usb3_ops);
 if (IS_ERR(r->phy)) {
  dev_err(dev, "Failed to create USB3 PHY\n");
  ret = PTR_ERR(r->phy);
  goto error;
 }

 of_property_read_u32(dev->of_node, "renesas,ssc-range", &r->ssc_range);

 platform_set_drvdata(pdev, r);
 phy_set_drvdata(r->phy, r);

 provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
 if (IS_ERR(provider)) {
  dev_err(dev, "Failed to register PHY provider\n");
  ret = PTR_ERR(provider);
  goto error;
 }

 return 0;

error:
 pm_runtime_disable(dev);

 return ret;
}
