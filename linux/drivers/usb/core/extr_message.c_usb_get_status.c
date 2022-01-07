
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct usb_device {int dummy; } ;
typedef int __le32 ;
typedef int __le16 ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int USB_CTRL_GET_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_REQ_GET_STATUS ;


 int kfree (void*) ;
 void* kmalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int const,int,void*,int,int ) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

int usb_get_status(struct usb_device *dev, int recip, int type, int target,
  void *data)
{
 int ret;
 void *status;
 int length;

 switch (type) {
 case 128:
  length = 2;
  break;
 case 129:
  if (recip != USB_RECIP_DEVICE)
   return -EINVAL;

  length = 4;
  break;
 default:
  return -EINVAL;
 }

 status = kmalloc(length, GFP_KERNEL);
 if (!status)
  return -ENOMEM;

 ret = usb_control_msg(dev, usb_rcvctrlpipe(dev, 0),
  USB_REQ_GET_STATUS, USB_DIR_IN | recip, 128,
  target, status, length, USB_CTRL_GET_TIMEOUT);

 switch (ret) {
 case 4:
  if (type != 129) {
   ret = -EIO;
   break;
  }

  *(u32 *) data = le32_to_cpu(*(__le32 *) status);
  ret = 0;
  break;
 case 2:
  if (type != 128) {
   ret = -EIO;
   break;
  }

  *(u16 *) data = le16_to_cpu(*(__le16 *) status);
  ret = 0;
  break;
 default:
  ret = -EIO;
 }

 kfree(status);
 return ret;
}
