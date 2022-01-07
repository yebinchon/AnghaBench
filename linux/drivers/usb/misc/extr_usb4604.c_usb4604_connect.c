
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb4604 {int mode; struct device* dev; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (int*) ;
 int USB4604_MODE_HUB ;
 int dev_dbg (struct device*,char*) ;
 int i2c_master_send (struct i2c_client*,int*,int ) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 int usb4604_reset (struct usb4604*,int) ;

__attribute__((used)) static int usb4604_connect(struct usb4604 *hub)
{
 struct device *dev = hub->dev;
 struct i2c_client *client = to_i2c_client(dev);
 int err;
 u8 connect_cmd[] = { 0xaa, 0x55, 0x00 };

 usb4604_reset(hub, 1);

 err = i2c_master_send(client, connect_cmd, ARRAY_SIZE(connect_cmd));
 if (err < 0) {
  usb4604_reset(hub, 0);
  return err;
 }

 hub->mode = USB4604_MODE_HUB;
 dev_dbg(dev, "switched to HUB mode\n");

 return 0;
}
