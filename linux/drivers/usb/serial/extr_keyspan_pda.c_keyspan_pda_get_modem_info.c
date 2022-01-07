
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
struct usb_serial {int dev; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int USB_DIR_IN ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_VENDOR ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int,int ) ;
 int usb_control_msg (int ,int ,int,int,int ,int ,unsigned char*,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int keyspan_pda_get_modem_info(struct usb_serial *serial,
          unsigned char *value)
{
 int rc;
 u8 *data;

 data = kmalloc(1, GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 rc = usb_control_msg(serial->dev, usb_rcvctrlpipe(serial->dev, 0),
        3,
        USB_TYPE_VENDOR|USB_RECIP_INTERFACE|USB_DIR_IN,
        0, 0, data, 1, 2000);
 if (rc == 1)
  *value = *data;
 else if (rc >= 0)
  rc = -EIO;

 kfree(data);
 return rc;
}
