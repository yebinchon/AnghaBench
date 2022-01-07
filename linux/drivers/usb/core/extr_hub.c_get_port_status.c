
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usb_device {int dummy; } ;


 int EPIPE ;
 int ETIMEDOUT ;
 int USB_DIR_IN ;
 int USB_REQ_GET_STATUS ;
 int USB_RT_PORT ;
 int USB_STS_RETRIES ;
 int USB_STS_TIMEOUT ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int ,int,void*,int ,int ) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int get_port_status(struct usb_device *hdev, int port1,
      void *data, u16 value, u16 length)
{
 int i, status = -ETIMEDOUT;

 for (i = 0; i < USB_STS_RETRIES &&
   (status == -ETIMEDOUT || status == -EPIPE); i++) {
  status = usb_control_msg(hdev, usb_rcvctrlpipe(hdev, 0),
   USB_REQ_GET_STATUS, USB_DIR_IN | USB_RT_PORT, value,
   port1, data, length, USB_STS_TIMEOUT);
 }
 return status;
}
