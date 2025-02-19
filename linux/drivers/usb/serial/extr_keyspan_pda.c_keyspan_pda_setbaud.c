
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int dev; } ;
typedef int speed_t ;


 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_VENDOR ;
 int usb_control_msg (int ,int ,int ,int,int,int ,int *,int ,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static speed_t keyspan_pda_setbaud(struct usb_serial *serial, speed_t baud)
{
 int rc;
 int bindex;

 switch (baud) {
 case 110:
  bindex = 0;
  break;
 case 300:
  bindex = 1;
  break;
 case 1200:
  bindex = 2;
  break;
 case 2400:
  bindex = 3;
  break;
 case 4800:
  bindex = 4;
  break;
 case 9600:
  bindex = 5;
  break;
 case 19200:
  bindex = 6;
  break;
 case 38400:
  bindex = 7;
  break;
 case 57600:
  bindex = 8;
  break;
 case 115200:
  bindex = 9;
  break;
 default:
  bindex = 5;
  baud = 9600;
 }



 rc = usb_control_msg(serial->dev, usb_sndctrlpipe(serial->dev, 0),
        0,
        USB_TYPE_VENDOR
        | USB_RECIP_INTERFACE
        | USB_DIR_OUT,
        bindex,
        0,
        ((void*)0),
        0,
        2000);
 if (rc < 0)
  return 0;
 return baud;
}
