
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbport_trig_data {int dummy; } ;
struct usb_device {int maxchild; int dev; } ;


 int dev_name (int *) ;
 int usbport_trig_add_port (struct usbport_trig_data*,struct usb_device*,int ,int) ;

__attribute__((used)) static int usbport_trig_add_usb_dev_ports(struct usb_device *usb_dev,
       void *data)
{
 struct usbport_trig_data *usbport_data = data;
 int i;

 for (i = 1; i <= usb_dev->maxchild; i++)
  usbport_trig_add_port(usbport_data, usb_dev,
          dev_name(&usb_dev->dev), i);

 return 0;
}
