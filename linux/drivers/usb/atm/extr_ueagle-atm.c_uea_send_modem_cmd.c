
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usb_device {int dummy; } ;


 int CTRL_TIMEOUT ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int LOAD_INTERNAL ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int kfree (int *) ;
 int * kmemdup (int const*,int,int ) ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int,int ,int *,int,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int uea_send_modem_cmd(struct usb_device *usb,
         u16 addr, u16 size, const u8 *buff)
{
 int ret = -ENOMEM;
 u8 *xfer_buff;

 xfer_buff = kmemdup(buff, size, GFP_KERNEL);
 if (xfer_buff) {
  ret = usb_control_msg(usb,
          usb_sndctrlpipe(usb, 0),
          LOAD_INTERNAL,
          USB_DIR_OUT | USB_TYPE_VENDOR |
          USB_RECIP_DEVICE, addr, 0, xfer_buff,
          size, CTRL_TIMEOUT);
  kfree(xfer_buff);
 }

 if (ret < 0)
  return ret;

 return (ret == size) ? 0 : -EIO;
}
