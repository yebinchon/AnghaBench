
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usb4604 {int mode; struct gpio_desc* gpio_reset; struct device* dev; } ;
struct gpio_desc {int dummy; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;


 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (struct gpio_desc*) ;
 int PTR_ERR (struct gpio_desc*) ;
 int USB4604_MODE_HUB ;
 struct gpio_desc* devm_gpiod_get_optional (struct device*,char*,int ) ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,int *) ;
 int usb4604_switch_mode (struct usb4604*,int ) ;

__attribute__((used)) static int usb4604_probe(struct usb4604 *hub)
{
 struct device *dev = hub->dev;
 struct device_node *np = dev->of_node;
 struct gpio_desc *gpio;
 u32 mode = USB4604_MODE_HUB;

 gpio = devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_LOW);
 if (IS_ERR(gpio))
  return PTR_ERR(gpio);
 hub->gpio_reset = gpio;

 if (of_property_read_u32(np, "initial-mode", &hub->mode))
  hub->mode = mode;

 return usb4604_switch_mode(hub, hub->mode);
}
