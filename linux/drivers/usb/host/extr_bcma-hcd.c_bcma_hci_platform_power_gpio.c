
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcma_hcd_device {int gpio_desc; } ;
struct bcma_device {int dummy; } ;


 scalar_t__ IS_ERR_OR_NULL (int ) ;
 struct bcma_hcd_device* bcma_get_drvdata (struct bcma_device*) ;
 int gpiod_set_value (int ,int) ;

__attribute__((used)) static void bcma_hci_platform_power_gpio(struct bcma_device *dev, bool val)
{
 struct bcma_hcd_device *usb_dev = bcma_get_drvdata(dev);

 if (IS_ERR_OR_NULL(usb_dev->gpio_desc))
  return;

 gpiod_set_value(usb_dev->gpio_desc, val);
}
