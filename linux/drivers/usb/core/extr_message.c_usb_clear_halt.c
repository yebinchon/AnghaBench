
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;


 int USB_CTRL_SET_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_ENDPOINT_HALT ;
 int USB_RECIP_ENDPOINT ;
 int USB_REQ_CLEAR_FEATURE ;
 int usb_control_msg (struct usb_device*,int ,int ,int ,int ,int,int *,int ,int ) ;
 int usb_pipeendpoint (int) ;
 scalar_t__ usb_pipein (int) ;
 int usb_reset_endpoint (struct usb_device*,int) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

int usb_clear_halt(struct usb_device *dev, int pipe)
{
 int result;
 int endp = usb_pipeendpoint(pipe);

 if (usb_pipein(pipe))
  endp |= USB_DIR_IN;





 result = usb_control_msg(dev, usb_sndctrlpipe(dev, 0),
  USB_REQ_CLEAR_FEATURE, USB_RECIP_ENDPOINT,
  USB_ENDPOINT_HALT, endp, ((void*)0), 0,
  USB_CTRL_SET_TIMEOUT);


 if (result < 0)
  return result;
 usb_reset_endpoint(dev, endp);

 return 0;
}
