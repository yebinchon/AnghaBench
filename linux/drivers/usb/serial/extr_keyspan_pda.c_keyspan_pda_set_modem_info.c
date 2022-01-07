
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int dev; } ;


 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_VENDOR ;
 int usb_control_msg (int ,int ,int,int,unsigned char,int ,int *,int ,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int keyspan_pda_set_modem_info(struct usb_serial *serial,
          unsigned char value)
{
 int rc;
 rc = usb_control_msg(serial->dev, usb_sndctrlpipe(serial->dev, 0),
        3,
        USB_TYPE_VENDOR|USB_RECIP_INTERFACE|USB_DIR_OUT,
        value, 0, ((void*)0), 0, 2000);
 return rc;
}
