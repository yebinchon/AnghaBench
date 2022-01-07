
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct thermal_zone_device {int device; } ;
struct spear_thermal_dev {int flags; struct thermal_zone_device* clk; struct thermal_zone_device* thermal_base; } ;
struct resource {int dummy; } ;
struct TYPE_5__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct thermal_zone_device*) ;
 int PTR_ERR (struct thermal_zone_device*) ;
 int clk_disable (struct thermal_zone_device*) ;
 int clk_enable (struct thermal_zone_device*) ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_info (int *,char*,struct thermal_zone_device*) ;
 struct thermal_zone_device* devm_clk_get (TYPE_1__*,int *) ;
 struct thermal_zone_device* devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 struct spear_thermal_dev* devm_kzalloc (TYPE_1__*,int,int ) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 int ops ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct thermal_zone_device*) ;
 struct thermal_zone_device* thermal_zone_device_register (char*,int ,int ,struct spear_thermal_dev*,int *,int *,int ,int ) ;
 int writel_relaxed (int,struct thermal_zone_device*) ;

__attribute__((used)) static int spear_thermal_probe(struct platform_device *pdev)
{
 struct thermal_zone_device *spear_thermal = ((void*)0);
 struct spear_thermal_dev *stdev;
 struct device_node *np = pdev->dev.of_node;
 struct resource *res;
 int ret = 0, val;

 if (!np || !of_property_read_u32(np, "st,thermal-flags", &val)) {
  dev_err(&pdev->dev, "Failed: DT Pdata not passed\n");
  return -EINVAL;
 }

 stdev = devm_kzalloc(&pdev->dev, sizeof(*stdev), GFP_KERNEL);
 if (!stdev)
  return -ENOMEM;


 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 stdev->thermal_base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(stdev->thermal_base))
  return PTR_ERR(stdev->thermal_base);

 stdev->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(stdev->clk)) {
  dev_err(&pdev->dev, "Can't get clock\n");
  return PTR_ERR(stdev->clk);
 }

 ret = clk_enable(stdev->clk);
 if (ret) {
  dev_err(&pdev->dev, "Can't enable clock\n");
  return ret;
 }

 stdev->flags = val;
 writel_relaxed(stdev->flags, stdev->thermal_base);

 spear_thermal = thermal_zone_device_register("spear_thermal", 0, 0,
    stdev, &ops, ((void*)0), 0, 0);
 if (IS_ERR(spear_thermal)) {
  dev_err(&pdev->dev, "thermal zone device is NULL\n");
  ret = PTR_ERR(spear_thermal);
  goto disable_clk;
 }

 platform_set_drvdata(pdev, spear_thermal);

 dev_info(&spear_thermal->device, "Thermal Sensor Loaded at: 0x%p.\n",
   stdev->thermal_base);

 return 0;

disable_clk:
 clk_disable(stdev->clk);

 return ret;
}
