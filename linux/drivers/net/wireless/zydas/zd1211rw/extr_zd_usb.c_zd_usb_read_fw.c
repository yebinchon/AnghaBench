
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zd_addr_t ;
typedef int u8 ;
typedef int u16 ;
struct zd_usb {int dummy; } ;
struct usb_device {int dev; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int USB_DIR_IN ;
 int USB_REQ_FIRMWARE_READ_DATA ;
 int dev_err (int *,char*,int,...) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int ,int ,int *,int,int) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;
 struct usb_device* zd_usb_to_usbdev (struct zd_usb*) ;

int zd_usb_read_fw(struct zd_usb *usb, zd_addr_t addr, u8 *data, u16 len)
{
 int r;
 struct usb_device *udev = zd_usb_to_usbdev(usb);
 u8 *buf;


 buf = kmalloc(len, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;
 r = usb_control_msg(udev, usb_rcvctrlpipe(udev, 0),
  USB_REQ_FIRMWARE_READ_DATA, USB_DIR_IN | 0x40, addr, 0,
  buf, len, 5000);
 if (r < 0) {
  dev_err(&udev->dev,
   "read over firmware interface failed: %d\n", r);
  goto exit;
 } else if (r != len) {
  dev_err(&udev->dev,
   "incomplete read over firmware interface: %d/%d\n",
   r, len);
  r = -EIO;
  goto exit;
 }
 r = 0;
 memcpy(data, buf, len);
exit:
 kfree(buf);
 return r;
}
