
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bMaxBurst; int bmAttributes; } ;
struct usb_host_endpoint {TYPE_1__ ss_ep_comp; } ;
struct usb_device {int dummy; } ;


 int USB_SS_MULT (int ) ;
 struct usb_host_endpoint* usb_pipe_endpoint (struct usb_device*,int) ;

__attribute__((used)) static int ss_isoc_get_packet_num(struct usb_device *udev, int pipe)
{
 struct usb_host_endpoint *ep = usb_pipe_endpoint(udev, pipe);

 return USB_SS_MULT(ep->ss_ep_comp.bmAttributes)
  * (1 + ep->ss_ep_comp.bMaxBurst);
}
