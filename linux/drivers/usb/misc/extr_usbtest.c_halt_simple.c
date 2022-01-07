
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbtest_dev {scalar_t__ out_pipe; scalar_t__ in_pipe; } ;
struct usb_device {scalar_t__ speed; } ;
struct urb {scalar_t__ pipe; } ;


 int ENOMEM ;
 int USB_DIR_IN ;
 scalar_t__ USB_SPEED_SUPER ;
 struct urb* simple_alloc_urb (struct usb_device*,int ,int,int ) ;
 int simple_free_urb (struct urb*) ;
 int test_halt (struct usbtest_dev*,int,struct urb*) ;
 struct usb_device* testdev_to_usbdev (struct usbtest_dev*) ;
 int usb_pipeendpoint (scalar_t__) ;

__attribute__((used)) static int halt_simple(struct usbtest_dev *dev)
{
 int ep;
 int retval = 0;
 struct urb *urb;
 struct usb_device *udev = testdev_to_usbdev(dev);

 if (udev->speed == USB_SPEED_SUPER)
  urb = simple_alloc_urb(udev, 0, 1024, 0);
 else
  urb = simple_alloc_urb(udev, 0, 512, 0);
 if (urb == ((void*)0))
  return -ENOMEM;

 if (dev->in_pipe) {
  ep = usb_pipeendpoint(dev->in_pipe) | USB_DIR_IN;
  urb->pipe = dev->in_pipe;
  retval = test_halt(dev, ep, urb);
  if (retval < 0)
   goto done;
 }

 if (dev->out_pipe) {
  ep = usb_pipeendpoint(dev->out_pipe);
  urb->pipe = dev->out_pipe;
  retval = test_halt(dev, ep, urb);
 }
done:
 simple_free_urb(urb);
 return retval;
}
