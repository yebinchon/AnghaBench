
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct gpio_backlight {int gpiod; int def_value; } ;


 int EPROBE_DEFER ;
 int GPIOD_ASIS ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*) ;
 int device_property_read_bool (struct device*,char*) ;
 int devm_gpiod_get (struct device*,int *,int ) ;

__attribute__((used)) static int gpio_backlight_probe_dt(struct platform_device *pdev,
       struct gpio_backlight *gbl)
{
 struct device *dev = &pdev->dev;
 int ret;

 gbl->def_value = device_property_read_bool(dev, "default-on");

 gbl->gpiod = devm_gpiod_get(dev, ((void*)0), GPIOD_ASIS);
 if (IS_ERR(gbl->gpiod)) {
  ret = PTR_ERR(gbl->gpiod);

  if (ret != -EPROBE_DEFER) {
   dev_err(dev,
    "Error: The gpios parameter is missing or invalid.\n");
  }
  return ret;
 }

 return 0;
}
