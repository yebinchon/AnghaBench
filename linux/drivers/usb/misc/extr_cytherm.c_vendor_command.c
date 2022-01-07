
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;


 int USB_CTRL_GET_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_RECIP_OTHER ;
 int USB_TYPE_VENDOR ;
 int usb_control_msg (struct usb_device*,int ,unsigned char,int,unsigned char,unsigned char,void*,int,int ) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int vendor_command(struct usb_device *dev, unsigned char request,
     unsigned char value, unsigned char index,
     void *buf, int size)
{
 return usb_control_msg(dev, usb_rcvctrlpipe(dev, 0),
          request,
          USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_OTHER,
          value,
          index, buf, size,
          USB_CTRL_GET_TIMEOUT);
}
