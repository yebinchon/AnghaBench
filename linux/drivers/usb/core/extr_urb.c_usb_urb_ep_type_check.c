
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_host_endpoint {int desc; } ;
struct urb {int pipe; int dev; } ;


 int EINVAL ;
 scalar_t__* pipetypes ;
 size_t usb_endpoint_type (int *) ;
 struct usb_host_endpoint* usb_pipe_endpoint (int ,int ) ;
 scalar_t__ usb_pipetype (int ) ;

int usb_urb_ep_type_check(const struct urb *urb)
{
 const struct usb_host_endpoint *ep;

 ep = usb_pipe_endpoint(urb->dev, urb->pipe);
 if (!ep)
  return -EINVAL;
 if (usb_pipetype(urb->pipe) != pipetypes[usb_endpoint_type(&ep->desc)])
  return -EINVAL;
 return 0;
}
