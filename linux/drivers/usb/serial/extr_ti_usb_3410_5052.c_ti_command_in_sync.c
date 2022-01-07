
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ti_device {TYPE_1__* td_serial; } ;
typedef int __u8 ;
typedef int __u16 ;
struct TYPE_2__ {int dev; } ;


 int ECOMM ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,int *,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int ti_command_in_sync(struct ti_device *tdev, __u8 command,
 __u16 moduleid, __u16 value, __u8 *data, int size)
{
 int status;

 status = usb_control_msg(tdev->td_serial->dev,
  usb_rcvctrlpipe(tdev->td_serial->dev, 0), command,
  (USB_TYPE_VENDOR | USB_RECIP_DEVICE | USB_DIR_IN),
  value, moduleid, data, size, 1000);

 if (status == size)
  status = 0;
 else if (status >= 0)
  status = -ECOMM;

 return status;
}
