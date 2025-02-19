
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc27xx_fgu_data {int bat_present; void* gpiod; struct device* dev; void* battery; int lock; void* charge_chan; void* channel; int base; int regmap; } ;
struct power_supply_config {struct device_node* of_node; struct sc27xx_fgu_data* drv_data; } ;
struct device {int parent; struct device_node* of_node; } ;
struct platform_device {int name; struct device dev; } ;
struct device_node {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_IN ;
 int IRQF_NO_SUSPEND ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 int IRQF_TRIGGER_RISING ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int dev_err (struct device*,char*) ;
 int dev_get_regmap (int ,int *) ;
 int device_property_read_u32 (struct device*,char*,int *) ;
 int devm_add_action_or_reset (struct device*,int ,struct sc27xx_fgu_data*) ;
 void* devm_gpiod_get (struct device*,char*,int ) ;
 void* devm_iio_channel_get (struct device*,char*) ;
 struct sc27xx_fgu_data* devm_kzalloc (struct device*,int,int ) ;
 void* devm_power_supply_register (struct device*,int *,struct power_supply_config*) ;
 int devm_request_threaded_irq (struct device*,int,int *,int ,int,int ,struct sc27xx_fgu_data*) ;
 int gpiod_get_value_cansleep (void*) ;
 int gpiod_to_irq (void*) ;
 int mutex_init (int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct sc27xx_fgu_data*) ;
 int sc27xx_fgu_bat_detection ;
 int sc27xx_fgu_desc ;
 int sc27xx_fgu_disable ;
 int sc27xx_fgu_hw_init (struct sc27xx_fgu_data*) ;
 int sc27xx_fgu_interrupt ;

__attribute__((used)) static int sc27xx_fgu_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct device_node *np = dev->of_node;
 struct power_supply_config fgu_cfg = { };
 struct sc27xx_fgu_data *data;
 int ret, irq;

 data = devm_kzalloc(dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->regmap = dev_get_regmap(dev->parent, ((void*)0));
 if (!data->regmap) {
  dev_err(dev, "failed to get regmap\n");
  return -ENODEV;
 }

 ret = device_property_read_u32(dev, "reg", &data->base);
 if (ret) {
  dev_err(dev, "failed to get fgu address\n");
  return ret;
 }

 data->channel = devm_iio_channel_get(dev, "bat-temp");
 if (IS_ERR(data->channel)) {
  dev_err(dev, "failed to get IIO channel\n");
  return PTR_ERR(data->channel);
 }

 data->charge_chan = devm_iio_channel_get(dev, "charge-vol");
 if (IS_ERR(data->charge_chan)) {
  dev_err(dev, "failed to get charge IIO channel\n");
  return PTR_ERR(data->charge_chan);
 }

 data->gpiod = devm_gpiod_get(dev, "bat-detect", GPIOD_IN);
 if (IS_ERR(data->gpiod)) {
  dev_err(dev, "failed to get battery detection GPIO\n");
  return PTR_ERR(data->gpiod);
 }

 ret = gpiod_get_value_cansleep(data->gpiod);
 if (ret < 0) {
  dev_err(dev, "failed to get gpio state\n");
  return ret;
 }

 data->bat_present = !!ret;
 mutex_init(&data->lock);
 data->dev = dev;
 platform_set_drvdata(pdev, data);

 fgu_cfg.drv_data = data;
 fgu_cfg.of_node = np;
 data->battery = devm_power_supply_register(dev, &sc27xx_fgu_desc,
         &fgu_cfg);
 if (IS_ERR(data->battery)) {
  dev_err(dev, "failed to register power supply\n");
  return PTR_ERR(data->battery);
 }

 ret = sc27xx_fgu_hw_init(data);
 if (ret) {
  dev_err(dev, "failed to initialize fgu hardware\n");
  return ret;
 }

 ret = devm_add_action_or_reset(dev, sc27xx_fgu_disable, data);
 if (ret) {
  dev_err(dev, "failed to add fgu disable action\n");
  return ret;
 }

 irq = platform_get_irq(pdev, 0);
 if (irq < 0) {
  dev_err(dev, "no irq resource specified\n");
  return irq;
 }

 ret = devm_request_threaded_irq(data->dev, irq, ((void*)0),
     sc27xx_fgu_interrupt,
     IRQF_NO_SUSPEND | IRQF_ONESHOT,
     pdev->name, data);
 if (ret) {
  dev_err(data->dev, "failed to request fgu IRQ\n");
  return ret;
 }

 irq = gpiod_to_irq(data->gpiod);
 if (irq < 0) {
  dev_err(dev, "failed to translate GPIO to IRQ\n");
  return irq;
 }

 ret = devm_request_threaded_irq(dev, irq, ((void*)0),
     sc27xx_fgu_bat_detection,
     IRQF_ONESHOT | IRQF_TRIGGER_RISING |
     IRQF_TRIGGER_FALLING,
     pdev->name, data);
 if (ret) {
  dev_err(dev, "failed to request IRQ\n");
  return ret;
 }

 return 0;
}
