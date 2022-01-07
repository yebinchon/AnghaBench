
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int dev; } ;
typedef int __u8 ;


 int ARK_TIMEOUT ;
 int usb_control_msg (int ,int ,int,int,int ,unsigned int,int *,int ,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int ark3116_write_reg(struct usb_serial *serial,
        unsigned reg, __u8 val)
{
 int result;

 result = usb_control_msg(serial->dev,
     usb_sndctrlpipe(serial->dev, 0),
     0xfe, 0x40, val, reg,
     ((void*)0), 0, ARK_TIMEOUT);
 if (result)
  return result;

 return 0;
}
