
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dev; } ;
typedef int __u8 ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int *,char*,int) ;
 int kfree (unsigned char*) ;
 unsigned char* kmemdup (unsigned char const*,int,int ) ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int,int ,unsigned char*,int,int) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int emi62_writememory(struct usb_device *dev, int address,
        const unsigned char *data, int length,
        __u8 request)
{
 int result;
 unsigned char *buffer = kmemdup(data, length, GFP_KERNEL);

 if (!buffer) {
  dev_err(&dev->dev, "kmalloc(%d) failed.\n", length);
  return -ENOMEM;
 }


 result = usb_control_msg (dev, usb_sndctrlpipe(dev, 0), request, 0x40, address, 0, buffer, length, 300);
 kfree (buffer);
 return result;
}
