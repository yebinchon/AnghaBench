
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w1_gpio_platform_data {scalar_t__ pullup_gpiod; int (* enable_external_pullup ) (int) ;scalar_t__ gpiod; } ;
struct w1_bus_master {int set_pullup; int write_bit; int read_bit; struct w1_gpio_platform_data* data; } ;
struct device {struct w1_gpio_platform_data* platform_data; struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
typedef enum gpiod_flags { ____Placeholder_gpiod_flags } gpiod_flags ;


 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 int GPIOD_OUT_LOW_OPEN_DRAIN ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 int dev_err (struct device*,char*) ;
 struct w1_gpio_platform_data* dev_get_platdata (struct device*) ;
 scalar_t__ devm_gpiod_get_index (struct device*,int *,int ,int) ;
 scalar_t__ devm_gpiod_get_index_optional (struct device*,int *,int,int) ;
 void* devm_kzalloc (struct device*,int,int ) ;
 int gpiod_direction_output (scalar_t__,int) ;
 int gpiod_set_value (scalar_t__,int) ;
 scalar_t__ of_get_property (struct device_node*,char*,int *) ;
 scalar_t__ of_have_populated_dt () ;
 int platform_set_drvdata (struct platform_device*,struct w1_bus_master*) ;
 int stub1 (int) ;
 int w1_add_master_device (struct w1_bus_master*) ;
 int w1_gpio_read_bit ;
 int w1_gpio_set_pullup ;
 int w1_gpio_write_bit ;

__attribute__((used)) static int w1_gpio_probe(struct platform_device *pdev)
{
 struct w1_bus_master *master;
 struct w1_gpio_platform_data *pdata;
 struct device *dev = &pdev->dev;
 struct device_node *np = dev->of_node;

 enum gpiod_flags gflags = GPIOD_OUT_LOW_OPEN_DRAIN;
 int err;

 if (of_have_populated_dt()) {
  pdata = devm_kzalloc(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
  if (!pdata)
   return -ENOMEM;







  if (of_get_property(np, "linux,open-drain", ((void*)0)))
   gflags = GPIOD_OUT_LOW;

  pdev->dev.platform_data = pdata;
 }
 pdata = dev_get_platdata(dev);

 if (!pdata) {
  dev_err(dev, "No configuration data\n");
  return -ENXIO;
 }

 master = devm_kzalloc(dev, sizeof(struct w1_bus_master),
   GFP_KERNEL);
 if (!master) {
  dev_err(dev, "Out of memory\n");
  return -ENOMEM;
 }

 pdata->gpiod = devm_gpiod_get_index(dev, ((void*)0), 0, gflags);
 if (IS_ERR(pdata->gpiod)) {
  dev_err(dev, "gpio_request (pin) failed\n");
  return PTR_ERR(pdata->gpiod);
 }

 pdata->pullup_gpiod =
  devm_gpiod_get_index_optional(dev, ((void*)0), 1, GPIOD_OUT_LOW);
 if (IS_ERR(pdata->pullup_gpiod)) {
  dev_err(dev, "gpio_request_one "
   "(ext_pullup_enable_pin) failed\n");
  return PTR_ERR(pdata->pullup_gpiod);
 }

 master->data = pdata;
 master->read_bit = w1_gpio_read_bit;
 gpiod_direction_output(pdata->gpiod, 1);
 master->write_bit = w1_gpio_write_bit;







 if (gflags == GPIOD_OUT_LOW_OPEN_DRAIN)
  master->set_pullup = w1_gpio_set_pullup;

 err = w1_add_master_device(master);
 if (err) {
  dev_err(dev, "w1_add_master device failed\n");
  return err;
 }

 if (pdata->enable_external_pullup)
  pdata->enable_external_pullup(1);

 if (pdata->pullup_gpiod)
  gpiod_set_value(pdata->pullup_gpiod, 1);

 platform_set_drvdata(pdev, master);

 return 0;
}
