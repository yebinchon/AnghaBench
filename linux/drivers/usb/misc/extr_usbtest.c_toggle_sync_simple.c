
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbtest_dev {int out_pipe; } ;
struct usb_device {int dummy; } ;
struct urb {int pipe; int transfer_flags; } ;


 int ENOMEM ;
 int URB_ZERO_PACKET ;
 unsigned int get_maxpacket (struct usb_device*,int ) ;
 struct urb* simple_alloc_urb (struct usb_device*,int ,int,int ) ;
 int simple_free_urb (struct urb*) ;
 int test_toggle_sync (struct usbtest_dev*,int,struct urb*) ;
 struct usb_device* testdev_to_usbdev (struct usbtest_dev*) ;
 int usb_pipeendpoint (int ) ;

__attribute__((used)) static int toggle_sync_simple(struct usbtest_dev *dev)
{
 int ep;
 int retval = 0;
 struct urb *urb;
 struct usb_device *udev = testdev_to_usbdev(dev);
 unsigned maxp = get_maxpacket(udev, dev->out_pipe);






 urb = simple_alloc_urb(udev, 0, 2 * maxp, 0);
 if (urb == ((void*)0))
  return -ENOMEM;

 urb->transfer_flags |= URB_ZERO_PACKET;

 ep = usb_pipeendpoint(dev->out_pipe);
 urb->pipe = dev->out_pipe;
 retval = test_toggle_sync(dev, ep, urb);

 simple_free_urb(urb);
 return retval;
}
