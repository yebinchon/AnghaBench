
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb3503 {int port_off_mask; int mode; int gpio_connect; scalar_t__ regmap; struct device* dev; } ;
struct device {int dummy; } ;


 int USB3503_CFG1 ;
 int USB3503_MODE_HUB ;
 int USB3503_PDS ;
 int USB3503_SELF_BUS_PWR ;
 int USB3503_SPILOCK_CONFIG ;
 int USB3503_SPILOCK_CONNECT ;
 int USB3503_SP_ILOCK ;
 int dev_err (struct device*,char*,int) ;
 int dev_info (struct device*,char*) ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value_cansleep (int ,int) ;
 int regmap_update_bits (scalar_t__,int ,int,int) ;
 int regmap_write (scalar_t__,int ,int) ;
 int usb3503_reset (struct usb3503*,int) ;

__attribute__((used)) static int usb3503_connect(struct usb3503 *hub)
{
 struct device *dev = hub->dev;
 int err;

 usb3503_reset(hub, 1);

 if (hub->regmap) {

  err = regmap_write(hub->regmap, USB3503_SP_ILOCK,
      (USB3503_SPILOCK_CONNECT
     | USB3503_SPILOCK_CONFIG));
  if (err < 0) {
   dev_err(dev, "SP_ILOCK failed (%d)\n", err);
   return err;
  }


  if (hub->port_off_mask) {
   err = regmap_update_bits(hub->regmap, USB3503_PDS,
     hub->port_off_mask,
     hub->port_off_mask);
   if (err < 0) {
    dev_err(dev, "PDS failed (%d)\n", err);
    return err;
   }
  }


  err = regmap_update_bits(hub->regmap, USB3503_CFG1,
      USB3503_SELF_BUS_PWR,
      USB3503_SELF_BUS_PWR);
  if (err < 0) {
   dev_err(dev, "CFG1 failed (%d)\n", err);
   return err;
  }


  err = regmap_update_bits(hub->regmap, USB3503_SP_ILOCK,
      (USB3503_SPILOCK_CONNECT
       | USB3503_SPILOCK_CONFIG), 0);
  if (err < 0) {
   dev_err(dev, "SP_ILOCK failed (%d)\n", err);
   return err;
  }
 }

 if (gpio_is_valid(hub->gpio_connect))
  gpio_set_value_cansleep(hub->gpio_connect, 1);

 hub->mode = USB3503_MODE_HUB;
 dev_info(dev, "switched to HUB mode\n");

 return 0;
}
