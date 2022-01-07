
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_gadget {TYPE_1__* ep0; int dev; } ;
struct usb_composite_driver {int dummy; } ;
struct usb_composite_dev {TYPE_2__* req; struct usb_composite_driver* driver; struct usb_gadget* gadget; } ;
struct TYPE_6__ {int buf; struct usb_composite_dev* context; int complete; } ;
struct TYPE_5__ {struct usb_composite_dev* driver_data; } ;


 scalar_t__ CONFIG_USB_GADGET_VBUS_DRAW ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int USB_COMP_EP0_BUFSIZ ;
 scalar_t__ USB_SELF_POWER_VBUS_MAX_DRAW ;
 int composite_setup_complete ;
 int dev_attr_suspended ;
 int device_create_file (int *,int *) ;
 int kfree (int ) ;
 int kmalloc (int ,int ) ;
 TYPE_2__* usb_ep_alloc_request (TYPE_1__*,int ) ;
 int usb_ep_autoconfig_reset (struct usb_gadget*) ;
 int usb_ep_free_request (TYPE_1__*,TYPE_2__*) ;
 int usb_gadget_set_selfpowered (struct usb_gadget*) ;

int composite_dev_prepare(struct usb_composite_driver *composite,
  struct usb_composite_dev *cdev)
{
 struct usb_gadget *gadget = cdev->gadget;
 int ret = -ENOMEM;


 cdev->req = usb_ep_alloc_request(gadget->ep0, GFP_KERNEL);
 if (!cdev->req)
  return -ENOMEM;

 cdev->req->buf = kmalloc(USB_COMP_EP0_BUFSIZ, GFP_KERNEL);
 if (!cdev->req->buf)
  goto fail;

 ret = device_create_file(&gadget->dev, &dev_attr_suspended);
 if (ret)
  goto fail_dev;

 cdev->req->complete = composite_setup_complete;
 cdev->req->context = cdev;
 gadget->ep0->driver_data = cdev;

 cdev->driver = composite;






 if (CONFIG_USB_GADGET_VBUS_DRAW <= USB_SELF_POWER_VBUS_MAX_DRAW)
  usb_gadget_set_selfpowered(gadget);





 usb_ep_autoconfig_reset(gadget);
 return 0;
fail_dev:
 kfree(cdev->req->buf);
fail:
 usb_ep_free_request(gadget->ep0, cdev->req);
 cdev->req = ((void*)0);
 return ret;
}
