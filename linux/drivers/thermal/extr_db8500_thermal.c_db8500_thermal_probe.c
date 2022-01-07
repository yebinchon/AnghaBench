
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct db8500_thermal_zone {int tz; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_NO_SUSPEND ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (int ) ;
 int PRCMU_DEFAULT_LOW_TEMP ;
 int PTR_ERR (int ) ;
 int THERMAL_TREND_STABLE ;
 int * db8500_thermal_points ;
 int db8500_thermal_update_config (struct db8500_thermal_zone*,int ,int ,int ,int ) ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*) ;
 struct db8500_thermal_zone* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_threaded_irq (struct device*,int,int *,int ,int,char*,struct db8500_thermal_zone*) ;
 int devm_thermal_zone_of_sensor_register (struct device*,int ,struct db8500_thermal_zone*,int *) ;
 int platform_get_irq_byname (struct platform_device*,char*) ;
 int platform_set_drvdata (struct platform_device*,struct db8500_thermal_zone*) ;
 int prcmu_high_irq_handler ;
 int prcmu_low_irq_handler ;
 int thdev_ops ;

__attribute__((used)) static int db8500_thermal_probe(struct platform_device *pdev)
{
 struct db8500_thermal_zone *th = ((void*)0);
 struct device *dev = &pdev->dev;
 int low_irq, high_irq, ret = 0;

 th = devm_kzalloc(dev, sizeof(*th), GFP_KERNEL);
 if (!th)
  return -ENOMEM;

 low_irq = platform_get_irq_byname(pdev, "IRQ_HOTMON_LOW");
 if (low_irq < 0) {
  dev_err(dev, "Get IRQ_HOTMON_LOW failed\n");
  return low_irq;
 }

 ret = devm_request_threaded_irq(dev, low_irq, ((void*)0),
  prcmu_low_irq_handler, IRQF_NO_SUSPEND | IRQF_ONESHOT,
  "dbx500_temp_low", th);
 if (ret < 0) {
  dev_err(dev, "failed to allocate temp low irq\n");
  return ret;
 }

 high_irq = platform_get_irq_byname(pdev, "IRQ_HOTMON_HIGH");
 if (high_irq < 0) {
  dev_err(dev, "Get IRQ_HOTMON_HIGH failed\n");
  return high_irq;
 }

 ret = devm_request_threaded_irq(dev, high_irq, ((void*)0),
  prcmu_high_irq_handler, IRQF_NO_SUSPEND | IRQF_ONESHOT,
  "dbx500_temp_high", th);
 if (ret < 0) {
  dev_err(dev, "failed to allocate temp high irq\n");
  return ret;
 }


 th->tz = devm_thermal_zone_of_sensor_register(dev, 0, th, &thdev_ops);
 if (IS_ERR(th->tz)) {
  dev_err(dev, "register thermal zone sensor failed\n");
  return PTR_ERR(th->tz);
 }
 dev_info(dev, "thermal zone sensor registered\n");


 db8500_thermal_update_config(th, 0, THERMAL_TREND_STABLE,
         PRCMU_DEFAULT_LOW_TEMP,
         db8500_thermal_points[0]);

 platform_set_drvdata(pdev, th);

 return 0;
}
