
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
struct usb_device {int dummy; } ;


 int ENODATA ;
 int ETIMEDOUT ;
 int USB_CTRL_GET_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_REQ_GET_DESCRIPTOR ;
 int memset (void*,int ,int) ;
 int usb_control_msg (struct usb_device*,int ,int ,int ,unsigned char,int ,void*,int,int ) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

int usb_get_descriptor(struct usb_device *dev, unsigned char type,
         unsigned char index, void *buf, int size)
{
 int i;
 int result;

 memset(buf, 0, size);

 for (i = 0; i < 3; ++i) {

  result = usb_control_msg(dev, usb_rcvctrlpipe(dev, 0),
    USB_REQ_GET_DESCRIPTOR, USB_DIR_IN,
    (type << 8) + index, 0, buf, size,
    USB_CTRL_GET_TIMEOUT);
  if (result <= 0 && result != -ETIMEDOUT)
   continue;
  if (result > 1 && ((u8 *)buf)[1] != type) {
   result = -ENODATA;
   continue;
  }
  break;
 }
 return result;
}
