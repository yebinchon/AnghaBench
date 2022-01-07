
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_tm_dev {int* alert_en; struct regmap* tz_dev; struct regmap* regmap; int data; struct device* dev; } ;
struct thermal_trip {scalar_t__ type; int temperature; } ;
struct regmap {int dummy; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;


 int ALERT_CH_NUM ;
 int CRITICAL_TEMP_LIMIT ;
 int E2BIG ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INT_MAX ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 scalar_t__ THERMAL_TRIP_CRITICAL ;
 scalar_t__ WARN_ON (int) ;
 int dev_err (struct device*,char*,...) ;
 struct uniphier_tm_dev* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_threaded_irq (struct device*,int,int ,int ,int ,char*,struct uniphier_tm_dev*) ;
 struct regmap* devm_thermal_zone_of_sensor_register (struct device*,int ,struct uniphier_tm_dev*,int *) ;
 int of_device_get_match_data (struct device*) ;
 struct device_node* of_get_parent (int ) ;
 int of_node_put (struct device_node*) ;
 int of_thermal_get_ntrips (struct regmap*) ;
 struct thermal_trip* of_thermal_get_trip_points (struct regmap*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct uniphier_tm_dev*) ;
 struct regmap* syscon_node_to_regmap (struct device_node*) ;
 int uniphier_of_thermal_ops ;
 int uniphier_tm_alarm_irq ;
 int uniphier_tm_alarm_irq_thread ;
 int uniphier_tm_enable_sensor (struct uniphier_tm_dev*) ;
 int uniphier_tm_initialize_sensor (struct uniphier_tm_dev*) ;
 int uniphier_tm_set_alert (struct uniphier_tm_dev*,int,int) ;

__attribute__((used)) static int uniphier_tm_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct regmap *regmap;
 struct device_node *parent;
 struct uniphier_tm_dev *tdev;
 const struct thermal_trip *trips;
 int i, ret, irq, ntrips, crit_temp = INT_MAX;

 tdev = devm_kzalloc(dev, sizeof(*tdev), GFP_KERNEL);
 if (!tdev)
  return -ENOMEM;
 tdev->dev = dev;

 tdev->data = of_device_get_match_data(dev);
 if (WARN_ON(!tdev->data))
  return -EINVAL;

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;


 parent = of_get_parent(dev->of_node);
 regmap = syscon_node_to_regmap(parent);
 of_node_put(parent);
 if (IS_ERR(regmap)) {
  dev_err(dev, "failed to get regmap (error %ld)\n",
   PTR_ERR(regmap));
  return PTR_ERR(regmap);
 }
 tdev->regmap = regmap;

 ret = uniphier_tm_initialize_sensor(tdev);
 if (ret) {
  dev_err(dev, "failed to initialize sensor\n");
  return ret;
 }

 ret = devm_request_threaded_irq(dev, irq, uniphier_tm_alarm_irq,
     uniphier_tm_alarm_irq_thread,
     0, "thermal", tdev);
 if (ret)
  return ret;

 platform_set_drvdata(pdev, tdev);

 tdev->tz_dev = devm_thermal_zone_of_sensor_register(dev, 0, tdev,
      &uniphier_of_thermal_ops);
 if (IS_ERR(tdev->tz_dev)) {
  dev_err(dev, "failed to register sensor device\n");
  return PTR_ERR(tdev->tz_dev);
 }


 trips = of_thermal_get_trip_points(tdev->tz_dev);
 ntrips = of_thermal_get_ntrips(tdev->tz_dev);
 if (ntrips > ALERT_CH_NUM) {
  dev_err(dev, "thermal zone has too many trips\n");
  return -E2BIG;
 }


 for (i = 0; i < ntrips; i++) {
  if (trips[i].type == THERMAL_TRIP_CRITICAL &&
      trips[i].temperature < crit_temp)
   crit_temp = trips[i].temperature;
  uniphier_tm_set_alert(tdev, i, trips[i].temperature);
  tdev->alert_en[i] = 1;
 }
 if (crit_temp > CRITICAL_TEMP_LIMIT) {
  dev_err(dev, "critical trip is over limit(>%d), or not set\n",
   CRITICAL_TEMP_LIMIT);
  return -EINVAL;
 }

 uniphier_tm_enable_sensor(tdev);

 return 0;
}
