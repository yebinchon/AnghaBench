
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbport_trig_data {TYPE_1__* led_cdev; } ;
struct usb_device {int dummy; } ;
struct of_phandle_args {struct device_node* np; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct TYPE_2__ {struct device* dev; } ;


 int dev_err (struct device*,char*,int,int) ;
 int dev_warn (struct device*,char*,struct device_node*) ;
 int of_count_phandle_with_args (struct device_node*,char*,char*) ;
 int of_node_put (struct device_node*) ;
 int of_parse_phandle_with_args (struct device_node*,char*,char*,int,struct of_phandle_args*) ;
 struct device_node* usb_of_get_device_node (struct usb_device*,int) ;

__attribute__((used)) static bool usbport_trig_port_observed(struct usbport_trig_data *usbport_data,
           struct usb_device *usb_dev, int port1)
{
 struct device *dev = usbport_data->led_cdev->dev;
 struct device_node *led_np = dev->of_node;
 struct of_phandle_args args;
 struct device_node *port_np;
 int count, i;

 if (!led_np)
  return 0;






 port_np = usb_of_get_device_node(usb_dev, port1);
 if (!port_np)
  return 0;

 of_node_put(port_np);


 count = of_count_phandle_with_args(led_np, "trigger-sources",
        "#trigger-source-cells");
 if (count < 0) {
  dev_warn(dev, "Failed to get trigger sources for %pOF\n",
    led_np);
  return 0;
 }


 for (i = 0; i < count; i++) {
  int err;

  err = of_parse_phandle_with_args(led_np, "trigger-sources",
       "#trigger-source-cells", i,
       &args);
  if (err) {
   dev_err(dev, "Failed to get trigger source phandle at index %d: %d\n",
    i, err);
   continue;
  }

  of_node_put(args.np);

  if (args.np == port_np)
   return 1;
 }

 return 0;
}
