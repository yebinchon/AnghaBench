
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct usb_serial {TYPE_1__* interface; int dev; } ;
struct TYPE_2__ {int dev; } ;


 int CP210X_VENDOR_SPECIFIC ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int USB_CTRL_GET_TIMEOUT ;
 int cp210x_interface_num (struct usb_serial*) ;
 int dev_err (int *,char*,int ,int,int) ;
 int kfree (void*) ;
 void* kmalloc (int,int ) ;
 int memcpy (void*,void*,int) ;
 int usb_control_msg (int ,int ,int ,int ,int ,int ,void*,int,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int cp210x_read_vendor_block(struct usb_serial *serial, u8 type, u16 val,
        void *buf, int bufsize)
{
 void *dmabuf;
 int result;

 dmabuf = kmalloc(bufsize, GFP_KERNEL);
 if (!dmabuf)
  return -ENOMEM;

 result = usb_control_msg(serial->dev, usb_rcvctrlpipe(serial->dev, 0),
     CP210X_VENDOR_SPECIFIC, type, val,
     cp210x_interface_num(serial), dmabuf, bufsize,
     USB_CTRL_GET_TIMEOUT);
 if (result == bufsize) {
  memcpy(buf, dmabuf, bufsize);
  result = 0;
 } else {
  dev_err(&serial->interface->dev,
   "failed to get vendor val 0x%04x size %d: %d\n", val,
   bufsize, result);
  if (result >= 0)
   result = -EIO;
 }

 kfree(dmabuf);

 return result;
}
