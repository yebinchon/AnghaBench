
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int dummy; } ;
struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct kirkwood_thermal_priv {struct thermal_zone_device* sensor; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct thermal_zone_device*) ;
 int PTR_ERR (struct thermal_zone_device*) ;
 int dev_err (int *,char*) ;
 struct thermal_zone_device* devm_ioremap_resource (int *,struct resource*) ;
 struct kirkwood_thermal_priv* devm_kzalloc (int *,int,int ) ;
 int ops ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct thermal_zone_device*) ;
 struct thermal_zone_device* thermal_zone_device_register (char*,int ,int ,struct kirkwood_thermal_priv*,int *,int *,int ,int ) ;

__attribute__((used)) static int kirkwood_thermal_probe(struct platform_device *pdev)
{
 struct thermal_zone_device *thermal = ((void*)0);
 struct kirkwood_thermal_priv *priv;
 struct resource *res;

 priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 priv->sensor = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(priv->sensor))
  return PTR_ERR(priv->sensor);

 thermal = thermal_zone_device_register("kirkwood_thermal", 0, 0,
            priv, &ops, ((void*)0), 0, 0);
 if (IS_ERR(thermal)) {
  dev_err(&pdev->dev,
   "Failed to register thermal zone device\n");
  return PTR_ERR(thermal);
 }

 platform_set_drvdata(pdev, thermal);

 return 0;
}
