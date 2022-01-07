
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_ctrlrequest {int dummy; } ;
struct urb {int error_count; int interval; int number_of_packets; int start_frame; scalar_t__ setup_packet; int pipe; int actual_length; int transfer_buffer_length; int transfer_flags; int status; TYPE_1__* dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 scalar_t__ PIPE_CONTROL ;
 int dev_dbg (struct device*,char*,int ) ;
 int pr_debug (char*) ;
 scalar_t__ usb_pipetype (int ) ;
 int usbip_dump_pipe (int ) ;
 int usbip_dump_usb_ctrlrequest (struct usb_ctrlrequest*) ;
 int usbip_dump_usb_device (TYPE_1__*) ;

void usbip_dump_urb(struct urb *urb)
{
 struct device *dev;

 if (!urb) {
  pr_debug("urb: null pointer!!\n");
  return;
 }

 if (!urb->dev) {
  pr_debug("urb->dev: null pointer!!\n");
  return;
 }

 dev = &urb->dev->dev;

 usbip_dump_usb_device(urb->dev);

 dev_dbg(dev, "   pipe                  :%08x ", urb->pipe);

 usbip_dump_pipe(urb->pipe);

 dev_dbg(dev, "   status                :%d\n", urb->status);
 dev_dbg(dev, "   transfer_flags        :%08X\n", urb->transfer_flags);
 dev_dbg(dev, "   transfer_buffer_length:%d\n",
      urb->transfer_buffer_length);
 dev_dbg(dev, "   actual_length         :%d\n", urb->actual_length);

 if (urb->setup_packet && usb_pipetype(urb->pipe) == PIPE_CONTROL)
  usbip_dump_usb_ctrlrequest(
   (struct usb_ctrlrequest *)urb->setup_packet);

 dev_dbg(dev, "   start_frame           :%d\n", urb->start_frame);
 dev_dbg(dev, "   number_of_packets     :%d\n", urb->number_of_packets);
 dev_dbg(dev, "   interval              :%d\n", urb->interval);
 dev_dbg(dev, "   error_count           :%d\n", urb->error_count);
}
