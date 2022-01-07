
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int of_node; } ;


 int GPIOF_OUT_INIT_HIGH ;
 int dev_err (struct device*,char*,int) ;
 int devm_gpio_request_one (struct device*,int,int ,char*) ;
 int gpio_is_valid (int) ;
 int of_get_named_gpio (int ,char*,int ) ;

__attribute__((used)) static void exynos_setup_vbus_gpio(struct device *dev)
{
 int err;
 int gpio;

 if (!dev->of_node)
  return;

 gpio = of_get_named_gpio(dev->of_node, "samsung,vbus-gpio", 0);
 if (!gpio_is_valid(gpio))
  return;

 err = devm_gpio_request_one(dev, gpio, GPIOF_OUT_INIT_HIGH,
        "ehci_vbus_gpio");
 if (err)
  dev_err(dev, "can't request ehci vbus gpio %d", gpio);
}
