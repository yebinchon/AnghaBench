
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wMaxPacketSize; } ;
struct usb_host_endpoint {TYPE_1__ desc; } ;
struct usb_device {int dummy; } ;


 int le16_to_cpup (int *) ;
 struct usb_host_endpoint* usb_pipe_endpoint (struct usb_device*,int) ;

__attribute__((used)) static unsigned get_maxpacket(struct usb_device *udev, int pipe)
{
 struct usb_host_endpoint *ep;

 ep = usb_pipe_endpoint(udev, pipe);
 return le16_to_cpup(&ep->desc.wMaxPacketSize);
}
