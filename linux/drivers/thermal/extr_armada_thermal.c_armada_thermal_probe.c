
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct thermal_zone_device {int dummy; } ;
struct TYPE_13__ {TYPE_1__* parent; } ;
struct platform_device {TYPE_3__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct armada_thermal_sensor {int id; struct armada_thermal_priv* priv; } ;
struct armada_thermal_priv {int current_channel; int overheat_sensor; struct armada_thermal_data* data; int zone_name; int update_lock; TYPE_3__* dev; } ;
struct armada_thermal_data {int cpu_nr; int (* init ) (struct platform_device*,struct armada_thermal_priv*) ;} ;
struct TYPE_12__ {struct armada_thermal_priv* priv; struct thermal_zone_device* tz; } ;
struct armada_drvdata {TYPE_2__ data; int type; } ;
struct TYPE_11__ {int of_node; } ;


 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct thermal_zone_device*) ;
 int LEGACY ;
 int PTR_ERR (struct thermal_zone_device*) ;
 int SYSCON ;
 int armada_configure_overheat_int (struct armada_thermal_priv*,struct thermal_zone_device*,int) ;
 int armada_overheat_isr ;
 int armada_overheat_isr_thread ;
 int armada_set_sane_name (struct platform_device*,struct armada_thermal_priv*) ;
 int armada_thermal_id_table ;
 int armada_thermal_probe_legacy (struct platform_device*,struct armada_thermal_priv*) ;
 int armada_thermal_probe_syscon (struct platform_device*,struct armada_thermal_priv*) ;
 int armada_wait_sensor_validity (struct armada_thermal_priv*) ;
 int dev_err (TYPE_3__*,char*,...) ;
 int dev_info (TYPE_3__*,char*,int) ;
 int dev_warn (TYPE_3__*,char*) ;
 int devm_kfree (TYPE_3__*,struct armada_thermal_sensor*) ;
 void* devm_kzalloc (TYPE_3__*,int,int ) ;
 int devm_request_threaded_irq (TYPE_3__*,int,int ,int ,int ,int *,struct armada_thermal_priv*) ;
 struct thermal_zone_device* devm_thermal_zone_of_sensor_register (TYPE_3__*,int,struct armada_thermal_sensor*,int *) ;
 int legacy_ops ;
 int mutex_init (int *) ;
 struct of_device_id* of_match_device (int ,TYPE_3__*) ;
 int of_ops ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct armada_drvdata*) ;
 int stub1 (struct platform_device*,struct armada_thermal_priv*) ;
 int stub2 (struct platform_device*,struct armada_thermal_priv*) ;
 struct thermal_zone_device* syscon_node_to_regmap (int ) ;
 struct thermal_zone_device* thermal_zone_device_register (int ,int ,int ,struct armada_thermal_priv*,int *,int *,int ,int ) ;

__attribute__((used)) static int armada_thermal_probe(struct platform_device *pdev)
{
 struct thermal_zone_device *tz;
 struct armada_thermal_sensor *sensor;
 struct armada_drvdata *drvdata;
 const struct of_device_id *match;
 struct armada_thermal_priv *priv;
 int sensor_id, irq;
 int ret;

 match = of_match_device(armada_thermal_id_table, &pdev->dev);
 if (!match)
  return -ENODEV;

 priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 drvdata = devm_kzalloc(&pdev->dev, sizeof(*drvdata), GFP_KERNEL);
 if (!drvdata)
  return -ENOMEM;

 priv->dev = &pdev->dev;
 priv->data = (struct armada_thermal_data *)match->data;

 mutex_init(&priv->update_lock);
 if (IS_ERR(syscon_node_to_regmap(pdev->dev.parent->of_node))) {

  armada_set_sane_name(pdev, priv);

  ret = armada_thermal_probe_legacy(pdev, priv);
  if (ret)
   return ret;

  priv->data->init(pdev, priv);


  armada_wait_sensor_validity(priv);

  tz = thermal_zone_device_register(priv->zone_name, 0, 0, priv,
        &legacy_ops, ((void*)0), 0, 0);
  if (IS_ERR(tz)) {
   dev_err(&pdev->dev,
    "Failed to register thermal zone device\n");
   return PTR_ERR(tz);
  }

  drvdata->type = LEGACY;
  drvdata->data.tz = tz;
  platform_set_drvdata(pdev, drvdata);

  return 0;
 }

 ret = armada_thermal_probe_syscon(pdev, priv);
 if (ret)
  return ret;

 priv->current_channel = -1;
 priv->data->init(pdev, priv);
 drvdata->type = SYSCON;
 drvdata->data.priv = priv;
 platform_set_drvdata(pdev, drvdata);

 irq = platform_get_irq(pdev, 0);
 if (irq == -EPROBE_DEFER)
  return irq;


 if (irq > 0) {
  ret = devm_request_threaded_irq(&pdev->dev, irq,
      armada_overheat_isr,
      armada_overheat_isr_thread,
      0, ((void*)0), priv);
  if (ret) {
   dev_err(&pdev->dev, "Cannot request threaded IRQ %d\n",
    irq);
   return ret;
  }
 }





 for (sensor_id = 0; sensor_id <= priv->data->cpu_nr; sensor_id++) {
  sensor = devm_kzalloc(&pdev->dev,
          sizeof(struct armada_thermal_sensor),
          GFP_KERNEL);
  if (!sensor)
   return -ENOMEM;


  sensor->priv = priv;
  sensor->id = sensor_id;
  tz = devm_thermal_zone_of_sensor_register(&pdev->dev,
         sensor->id, sensor,
         &of_ops);
  if (IS_ERR(tz)) {
   dev_info(&pdev->dev, "Thermal sensor %d unavailable\n",
     sensor_id);
   devm_kfree(&pdev->dev, sensor);
   continue;
  }






  if (irq > 0 && !priv->overheat_sensor)
   armada_configure_overheat_int(priv, tz, sensor->id);
 }


 if (!priv->overheat_sensor)
  dev_warn(&pdev->dev, "Overheat interrupt not available\n");

 return 0;
}
