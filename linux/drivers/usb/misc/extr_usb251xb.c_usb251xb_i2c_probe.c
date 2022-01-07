
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb251xb {struct i2c_client* i2c; int * dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct usb251xb* devm_kzalloc (int *,int,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct usb251xb*) ;
 int usb251xb_probe (struct usb251xb*) ;

__attribute__((used)) static int usb251xb_i2c_probe(struct i2c_client *i2c,
         const struct i2c_device_id *id)
{
 struct usb251xb *hub;

 hub = devm_kzalloc(&i2c->dev, sizeof(struct usb251xb), GFP_KERNEL);
 if (!hub)
  return -ENOMEM;

 i2c_set_clientdata(i2c, hub);
 hub->dev = &i2c->dev;
 hub->i2c = i2c;

 return usb251xb_probe(hub);
}
