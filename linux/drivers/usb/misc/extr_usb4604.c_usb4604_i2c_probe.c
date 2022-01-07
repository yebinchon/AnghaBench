
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb4604 {int * dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct usb4604* devm_kzalloc (int *,int,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct usb4604*) ;
 int usb4604_probe (struct usb4604*) ;

__attribute__((used)) static int usb4604_i2c_probe(struct i2c_client *i2c,
        const struct i2c_device_id *id)
{
 struct usb4604 *hub;

 hub = devm_kzalloc(&i2c->dev, sizeof(*hub), GFP_KERNEL);
 if (!hub)
  return -ENOMEM;

 i2c_set_clientdata(i2c, hub);
 hub->dev = &i2c->dev;

 return usb4604_probe(hub);
}
