
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ep {struct f_loopback* driver_data; } ;
struct usb_composite_dev {int gadget; } ;
struct f_loopback {int function; } ;


 int config_ep_by_speed (int ,int *,struct usb_ep*) ;
 int usb_ep_enable (struct usb_ep*) ;

__attribute__((used)) static int enable_endpoint(struct usb_composite_dev *cdev,
      struct f_loopback *loop, struct usb_ep *ep)
{
 int result;

 result = config_ep_by_speed(cdev->gadget, &(loop->function), ep);
 if (result)
  goto out;

 result = usb_ep_enable(ep);
 if (result < 0)
  goto out;
 ep->driver_data = loop;
 result = 0;

out:
 return result;
}
