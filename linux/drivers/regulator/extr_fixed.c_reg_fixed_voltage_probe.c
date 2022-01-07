
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct regulator_config {scalar_t__ of_node; struct fixed_voltage_data* driver_data; int init_data; struct device* dev; struct fixed_voltage_config* ena_gpiod; } ;
struct device {scalar_t__ of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_3__ {int n_voltages; scalar_t__ fixed_uV; int * name; void* supply_name; int enable_time; int * ops; int owner; int type; } ;
struct fixed_voltage_data {TYPE_1__ desc; struct fixed_voltage_config* dev; struct fixed_voltage_config* enable_clock; } ;
struct fixed_voltage_config {int init_data; scalar_t__ enabled_at_boot; scalar_t__ microvolts; scalar_t__ input_supply; int startup_delay; scalar_t__ supply_name; } ;
struct fixed_dev_type {scalar_t__ has_enable_clock; } ;
typedef enum gpiod_flags { ____Placeholder_gpiod_flags } gpiod_flags ;


 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_FLAGS_BIT_NONEXCLUSIVE ;
 int GPIOD_OUT_HIGH ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (struct fixed_voltage_config*) ;
 int PTR_ERR (struct fixed_voltage_config*) ;
 int REGULATOR_VOLTAGE ;
 int THIS_MODULE ;
 int dev_dbg (struct device*,char*,int *,scalar_t__) ;
 int dev_err (struct device*,char*,...) ;
 struct fixed_voltage_config* dev_get_platdata (struct device*) ;
 struct fixed_voltage_config* devm_clk_get (struct device*,int *) ;
 void* devm_kstrdup (struct device*,scalar_t__,int ) ;
 struct fixed_voltage_data* devm_kzalloc (struct device*,int,int ) ;
 struct fixed_voltage_config* devm_regulator_register (struct device*,TYPE_1__*,struct regulator_config*) ;
 int fixed_voltage_clkenabled_ops ;
 int fixed_voltage_ops ;
 struct fixed_voltage_config* gpiod_get_optional (struct device*,int *,int) ;
 struct fixed_dev_type* of_device_get_match_data (struct device*) ;
 struct fixed_voltage_config* of_get_fixed_voltage_config (struct device*,TYPE_1__*) ;
 int platform_set_drvdata (struct platform_device*,struct fixed_voltage_data*) ;

__attribute__((used)) static int reg_fixed_voltage_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct fixed_voltage_config *config;
 struct fixed_voltage_data *drvdata;
 const struct fixed_dev_type *drvtype = of_device_get_match_data(dev);
 struct regulator_config cfg = { };
 enum gpiod_flags gflags;
 int ret;

 drvdata = devm_kzalloc(&pdev->dev, sizeof(struct fixed_voltage_data),
          GFP_KERNEL);
 if (!drvdata)
  return -ENOMEM;

 if (pdev->dev.of_node) {
  config = of_get_fixed_voltage_config(&pdev->dev,
           &drvdata->desc);
  if (IS_ERR(config))
   return PTR_ERR(config);
 } else {
  config = dev_get_platdata(&pdev->dev);
 }

 if (!config)
  return -ENOMEM;

 drvdata->desc.name = devm_kstrdup(&pdev->dev,
       config->supply_name,
       GFP_KERNEL);
 if (drvdata->desc.name == ((void*)0)) {
  dev_err(&pdev->dev, "Failed to allocate supply name\n");
  return -ENOMEM;
 }
 drvdata->desc.type = REGULATOR_VOLTAGE;
 drvdata->desc.owner = THIS_MODULE;

 if (drvtype && drvtype->has_enable_clock) {
  drvdata->desc.ops = &fixed_voltage_clkenabled_ops;

  drvdata->enable_clock = devm_clk_get(dev, ((void*)0));
  if (IS_ERR(drvdata->enable_clock)) {
   dev_err(dev, "Cant get enable-clock from devicetree\n");
   return -ENOENT;
  }
 } else {
  drvdata->desc.ops = &fixed_voltage_ops;
 }

 drvdata->desc.enable_time = config->startup_delay;

 if (config->input_supply) {
  drvdata->desc.supply_name = devm_kstrdup(&pdev->dev,
         config->input_supply,
         GFP_KERNEL);
  if (!drvdata->desc.supply_name) {
   dev_err(&pdev->dev,
    "Failed to allocate input supply\n");
   return -ENOMEM;
  }
 }

 if (config->microvolts)
  drvdata->desc.n_voltages = 1;

 drvdata->desc.fixed_uV = config->microvolts;





 if (config->enabled_at_boot)
  gflags = GPIOD_OUT_HIGH;
 else
  gflags = GPIOD_OUT_LOW;
 gflags |= GPIOD_FLAGS_BIT_NONEXCLUSIVE;





 cfg.ena_gpiod = gpiod_get_optional(&pdev->dev, ((void*)0), gflags);
 if (IS_ERR(cfg.ena_gpiod))
  return PTR_ERR(cfg.ena_gpiod);

 cfg.dev = &pdev->dev;
 cfg.init_data = config->init_data;
 cfg.driver_data = drvdata;
 cfg.of_node = pdev->dev.of_node;

 drvdata->dev = devm_regulator_register(&pdev->dev, &drvdata->desc,
            &cfg);
 if (IS_ERR(drvdata->dev)) {
  ret = PTR_ERR(drvdata->dev);
  dev_err(&pdev->dev, "Failed to register regulator: %d\n", ret);
  return ret;
 }

 platform_set_drvdata(pdev, drvdata);

 dev_dbg(&pdev->dev, "%s supplying %duV\n", drvdata->desc.name,
  drvdata->desc.fixed_uV);

 return 0;
}
