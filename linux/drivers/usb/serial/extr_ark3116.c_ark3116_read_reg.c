
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_serial {TYPE_1__* interface; int dev; } ;
struct TYPE_2__ {int dev; } ;


 int ARK_TIMEOUT ;
 int EIO ;
 int dev_err (int *,char*,unsigned int,int) ;
 int usb_control_msg (int ,int ,int,int,int ,unsigned int,unsigned char*,int,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int ark3116_read_reg(struct usb_serial *serial,
       unsigned reg, unsigned char *buf)
{
 int result;

 result = usb_control_msg(serial->dev,
     usb_rcvctrlpipe(serial->dev, 0),
     0xfe, 0xc0, 0, reg,
     buf, 1, ARK_TIMEOUT);
 if (result < 1) {
  dev_err(&serial->interface->dev,
    "failed to read register %u: %d\n",
    reg, result);
  if (result >= 0)
   result = -EIO;

  return result;
 }

 return 0;
}
