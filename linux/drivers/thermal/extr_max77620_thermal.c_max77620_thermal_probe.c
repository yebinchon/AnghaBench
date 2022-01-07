
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct max77620_therm_info {scalar_t__ irq_tjalarm1; scalar_t__ irq_tjalarm2; int tz_device; int rmap; TYPE_1__* dev; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_1__*,char*,...) ;
 int dev_get_regmap (int ,int *) ;
 int dev_name (TYPE_1__*) ;
 int device_set_of_node_from_dev (TYPE_1__*,int ) ;
 struct max77620_therm_info* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_request_threaded_irq (TYPE_1__*,scalar_t__,int *,int ,int,int ,struct max77620_therm_info*) ;
 int devm_thermal_zone_of_sensor_register (TYPE_1__*,int ,struct max77620_therm_info*,int *) ;
 int max77620_thermal_irq ;
 int max77620_thermal_ops ;
 void* platform_get_irq (struct platform_device*,int) ;
 int platform_set_drvdata (struct platform_device*,struct max77620_therm_info*) ;

__attribute__((used)) static int max77620_thermal_probe(struct platform_device *pdev)
{
 struct max77620_therm_info *mtherm;
 int ret;

 mtherm = devm_kzalloc(&pdev->dev, sizeof(*mtherm), GFP_KERNEL);
 if (!mtherm)
  return -ENOMEM;

 mtherm->irq_tjalarm1 = platform_get_irq(pdev, 0);
 mtherm->irq_tjalarm2 = platform_get_irq(pdev, 1);
 if ((mtherm->irq_tjalarm1 < 0) || (mtherm->irq_tjalarm2 < 0)) {
  dev_err(&pdev->dev, "Alarm irq number not available\n");
  return -EINVAL;
 }

 mtherm->dev = &pdev->dev;
 mtherm->rmap = dev_get_regmap(pdev->dev.parent, ((void*)0));
 if (!mtherm->rmap) {
  dev_err(&pdev->dev, "Failed to get parent regmap\n");
  return -ENODEV;
 }





 device_set_of_node_from_dev(&pdev->dev, pdev->dev.parent);

 mtherm->tz_device = devm_thermal_zone_of_sensor_register(&pdev->dev, 0,
    mtherm, &max77620_thermal_ops);
 if (IS_ERR(mtherm->tz_device)) {
  ret = PTR_ERR(mtherm->tz_device);
  dev_err(&pdev->dev, "Failed to register thermal zone: %d\n",
   ret);
  return ret;
 }

 ret = devm_request_threaded_irq(&pdev->dev, mtherm->irq_tjalarm1, ((void*)0),
     max77620_thermal_irq,
     IRQF_ONESHOT | IRQF_SHARED,
     dev_name(&pdev->dev), mtherm);
 if (ret < 0) {
  dev_err(&pdev->dev, "Failed to request irq1: %d\n", ret);
  return ret;
 }

 ret = devm_request_threaded_irq(&pdev->dev, mtherm->irq_tjalarm2, ((void*)0),
     max77620_thermal_irq,
     IRQF_ONESHOT | IRQF_SHARED,
     dev_name(&pdev->dev), mtherm);
 if (ret < 0) {
  dev_err(&pdev->dev, "Failed to request irq2: %d\n", ret);
  return ret;
 }

 platform_set_drvdata(pdev, mtherm);

 return 0;
}
