
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usb_device {int dummy; } ;


 int HUB_CLEAR_TT_BUFFER ;
 int USB_ENDPOINT_XFERTYPE_MASK ;
 int USB_ENDPOINT_XFER_CONTROL ;
 int USB_RT_PORT ;
 int usb_control_msg (struct usb_device*,int ,int ,int ,int,int,int *,int ,int) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static inline int
hub_clear_tt_buffer(struct usb_device *hdev, u16 devinfo, u16 tt)
{

 if (((devinfo >> 11) & USB_ENDPOINT_XFERTYPE_MASK) ==
   USB_ENDPOINT_XFER_CONTROL) {
  int status = usb_control_msg(hdev, usb_sndctrlpipe(hdev, 0),
    HUB_CLEAR_TT_BUFFER, USB_RT_PORT,
    devinfo ^ 0x8000, tt, ((void*)0), 0, 1000);
  if (status)
   return status;
 }
 return usb_control_msg(hdev, usb_sndctrlpipe(hdev, 0),
          HUB_CLEAR_TT_BUFFER, USB_RT_PORT, devinfo,
          tt, ((void*)0), 0, 1000);
}
