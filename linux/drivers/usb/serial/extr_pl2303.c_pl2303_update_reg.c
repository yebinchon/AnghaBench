
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_serial {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int pl2303_vendor_read (struct usb_serial*,int,int*) ;
 int pl2303_vendor_write (struct usb_serial*,int,int) ;

__attribute__((used)) static int pl2303_update_reg(struct usb_serial *serial, u8 reg, u8 mask, u8 val)
{
 int ret = 0;
 u8 *buf;

 buf = kmalloc(1, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 ret = pl2303_vendor_read(serial, reg | 0x80, buf);
 if (ret)
  goto out_free;

 *buf &= ~mask;
 *buf |= val & mask;

 ret = pl2303_vendor_write(serial, reg, *buf);
out_free:
 kfree(buf);

 return ret;
}
