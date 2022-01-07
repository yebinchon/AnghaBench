
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ufx_data {int udev; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int USB_CTRL_GET_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int USB_VENDOR_REQUEST_READ_REGISTER ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int le32_to_cpus (int *) ;
 int pr_warn (char*,int ) ;
 scalar_t__ unlikely (int) ;
 int usb_control_msg (int ,int ,int ,int,int,int ,int *,int,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int ufx_reg_read(struct ufx_data *dev, u32 index, u32 *data)
{
 u32 *buf = kmalloc(4, GFP_KERNEL);
 int ret;

 BUG_ON(!dev);

 if (!buf)
  return -ENOMEM;

 ret = usb_control_msg(dev->udev, usb_rcvctrlpipe(dev->udev, 0),
  USB_VENDOR_REQUEST_READ_REGISTER,
  USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
  00, index, buf, 4, USB_CTRL_GET_TIMEOUT);

 le32_to_cpus(buf);
 *data = *buf;
 kfree(buf);

 if (unlikely(ret < 0))
  pr_warn("Failed to read register index 0x%08x\n", index);

 return ret;
}
