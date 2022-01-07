
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_host_endpoint {int desc; } ;
struct usb_device {int dummy; } ;


 int EINVAL ;
 int EP_REGS_OUT ;
 int usb_bulk_msg (struct usb_device*,unsigned int,void*,int,int*,int) ;
 scalar_t__ usb_endpoint_xfer_int (int *) ;
 int usb_interrupt_msg (struct usb_device*,unsigned int,void*,int,int*,int) ;
 struct usb_host_endpoint* usb_pipe_endpoint (struct usb_device*,unsigned int) ;
 unsigned int usb_sndbulkpipe (struct usb_device*,int ) ;
 unsigned int usb_sndintpipe (struct usb_device*,int ) ;

__attribute__((used)) static int zd_ep_regs_out_msg(struct usb_device *udev, void *data, int len,
         int *actual_length, int timeout)
{




 struct usb_host_endpoint *ep;
 unsigned int pipe;

 pipe = usb_sndintpipe(udev, EP_REGS_OUT);
 ep = usb_pipe_endpoint(udev, pipe);
 if (!ep)
  return -EINVAL;

 if (usb_endpoint_xfer_int(&ep->desc)) {
  return usb_interrupt_msg(udev, pipe, data, len,
      actual_length, timeout);
 } else {
  pipe = usb_sndbulkpipe(udev, EP_REGS_OUT);
  return usb_bulk_msg(udev, pipe, data, len, actual_length,
        timeout);
 }
}
