
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int dummy; } ;
struct tango_thermal_priv {int thresh_idx; int base; } ;
struct resource {int dummy; } ;
struct platform_device {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IDX_MIN ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int PTR_ERR_OR_ZERO (struct thermal_zone_device*) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct tango_thermal_priv* devm_kzalloc (int *,int,int ) ;
 struct thermal_zone_device* devm_thermal_zone_of_sensor_register (int *,int ,struct tango_thermal_priv*,int *) ;
 int ops ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct tango_thermal_priv*) ;
 int tango_thermal_init (struct tango_thermal_priv*) ;

__attribute__((used)) static int tango_thermal_probe(struct platform_device *pdev)
{
 struct resource *res;
 struct tango_thermal_priv *priv;
 struct thermal_zone_device *tzdev;

 priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 priv->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(priv->base))
  return PTR_ERR(priv->base);

 platform_set_drvdata(pdev, priv);
 priv->thresh_idx = IDX_MIN;
 tango_thermal_init(priv);

 tzdev = devm_thermal_zone_of_sensor_register(&pdev->dev, 0, priv, &ops);
 return PTR_ERR_OR_ZERO(tzdev);
}
