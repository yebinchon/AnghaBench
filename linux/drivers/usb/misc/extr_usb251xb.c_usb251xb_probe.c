
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb251xb_data {int dummy; } ;
struct usb251xb {struct device* dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;


 int dev_err (struct device*,char*,int) ;
 int dev_info (struct device*,char*) ;
 struct of_device_id* of_match_device (int ,struct device*) ;
 int usb251x_check_gpio_chip (struct usb251xb*) ;
 int usb251xb_connect (struct usb251xb*) ;
 int usb251xb_get_ofdata (struct usb251xb*,struct usb251xb_data*) ;
 int usb251xb_of_match ;

__attribute__((used)) static int usb251xb_probe(struct usb251xb *hub)
{
 struct device *dev = hub->dev;
 struct device_node *np = dev->of_node;
 const struct of_device_id *of_id = of_match_device(usb251xb_of_match,
          dev);
 int err;

 if (np && of_id) {
  err = usb251xb_get_ofdata(hub,
       (struct usb251xb_data *)of_id->data);
  if (err) {
   dev_err(dev, "failed to get ofdata: %d\n", err);
   return err;
  }
 }
 err = usb251x_check_gpio_chip(hub);
 if (err)
  return err;

 err = usb251xb_connect(hub);
 if (err) {
  dev_err(dev, "Failed to connect hub (%d)\n", err);
  return err;
 }

 dev_info(dev, "Hub probed successfully\n");

 return 0;
}
