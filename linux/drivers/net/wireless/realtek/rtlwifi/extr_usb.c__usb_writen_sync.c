
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct usb_device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;
struct rtl_priv {TYPE_1__ io; } ;
struct device {int dummy; } ;


 int GFP_ATOMIC ;
 scalar_t__ REALTEK_USB_VENQT_CMD_IDX ;
 int REALTEK_USB_VENQT_CMD_REQ ;
 int REALTEK_USB_VENQT_WRITE ;
 int kfree (int *) ;
 int * kmemdup (void*,scalar_t__,int ) ;
 struct usb_device* to_usb_device (struct device*) ;
 int usb_control_msg (struct usb_device*,int,int ,int ,scalar_t__,scalar_t__,int *,scalar_t__,int) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static void _usb_writen_sync(struct rtl_priv *rtlpriv, u32 addr, void *data,
        u16 len)
{
 struct device *dev = rtlpriv->io.dev;
 struct usb_device *udev = to_usb_device(dev);
 u8 request = REALTEK_USB_VENQT_CMD_REQ;
 u8 reqtype = REALTEK_USB_VENQT_WRITE;
 u16 wvalue;
 u16 index = REALTEK_USB_VENQT_CMD_IDX;
 int pipe = usb_sndctrlpipe(udev, 0);
 u8 *buffer;

 wvalue = (u16)(addr & 0x0000ffff);
 buffer = kmemdup(data, len, GFP_ATOMIC);
 if (!buffer)
  return;
 usb_control_msg(udev, pipe, request, reqtype, wvalue,
   index, buffer, len, 50);

 kfree(buffer);
}
