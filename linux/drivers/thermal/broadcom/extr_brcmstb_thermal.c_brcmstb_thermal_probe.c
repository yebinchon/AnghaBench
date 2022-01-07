
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int dummy; } ;
struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct brcmstb_thermal_priv {struct thermal_zone_device* thermal; int * dev; struct thermal_zone_device* tmon_base; } ;


 int DRV_NAME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (struct thermal_zone_device*) ;
 int PTR_ERR (struct thermal_zone_device*) ;
 int brcmstb_tmon_irq_thread ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*) ;
 struct thermal_zone_device* devm_ioremap_resource (int *,struct resource*) ;
 struct brcmstb_thermal_priv* devm_kzalloc (int *,int,int ) ;
 int devm_request_threaded_irq (int *,int,int *,int ,int ,int ,struct brcmstb_thermal_priv*) ;
 struct thermal_zone_device* devm_thermal_zone_of_sensor_register (int *,int ,struct brcmstb_thermal_priv*,int *) ;
 int of_ops ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct brcmstb_thermal_priv*) ;

__attribute__((used)) static int brcmstb_thermal_probe(struct platform_device *pdev)
{
 struct thermal_zone_device *thermal;
 struct brcmstb_thermal_priv *priv;
 struct resource *res;
 int irq, ret;

 priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 priv->tmon_base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(priv->tmon_base))
  return PTR_ERR(priv->tmon_base);

 priv->dev = &pdev->dev;
 platform_set_drvdata(pdev, priv);

 thermal = devm_thermal_zone_of_sensor_register(&pdev->dev, 0, priv,
             &of_ops);
 if (IS_ERR(thermal)) {
  ret = PTR_ERR(thermal);
  dev_err(&pdev->dev, "could not register sensor: %d\n", ret);
  return ret;
 }

 priv->thermal = thermal;

 irq = platform_get_irq(pdev, 0);
 if (irq < 0) {
  dev_err(&pdev->dev, "could not get IRQ\n");
  return irq;
 }
 ret = devm_request_threaded_irq(&pdev->dev, irq, ((void*)0),
     brcmstb_tmon_irq_thread, IRQF_ONESHOT,
     DRV_NAME, priv);
 if (ret < 0) {
  dev_err(&pdev->dev, "could not request IRQ: %d\n", ret);
  return ret;
 }

 dev_info(&pdev->dev, "registered AVS TMON of-sensor driver\n");

 return 0;
}
