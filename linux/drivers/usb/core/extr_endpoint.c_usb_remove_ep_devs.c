
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_host_endpoint {struct ep_device* ep_dev; } ;
struct ep_device {int dev; } ;


 int device_unregister (int *) ;

void usb_remove_ep_devs(struct usb_host_endpoint *endpoint)
{
 struct ep_device *ep_dev = endpoint->ep_dev;

 if (ep_dev) {
  device_unregister(&ep_dev->dev);
  endpoint->ep_dev = ((void*)0);
 }
}
