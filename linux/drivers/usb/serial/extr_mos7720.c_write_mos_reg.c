
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {struct usb_device* dev; } ;
struct usb_device {int dev; } ;
typedef enum mos_regs { ____Placeholder_mos_regs } mos_regs ;
typedef scalar_t__ __u8 ;
typedef scalar_t__ __u16 ;


 int MOS_WDR_TIMEOUT ;
 int dev_err (int *,char*,int) ;
 scalar_t__ get_reg_index (int) ;
 scalar_t__ get_reg_value (int,unsigned int) ;
 int usb_control_msg (struct usb_device*,unsigned int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int *,int ,int ) ;
 unsigned int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int write_mos_reg(struct usb_serial *serial, unsigned int serial_portnum,
    enum mos_regs reg, __u8 data)
{
 struct usb_device *usbdev = serial->dev;
 unsigned int pipe = usb_sndctrlpipe(usbdev, 0);
 __u8 request = (__u8)0x0e;
 __u8 requesttype = (__u8)0x40;
 __u16 index = get_reg_index(reg);
 __u16 value = get_reg_value(reg, serial_portnum) + data;
 int status = usb_control_msg(usbdev, pipe, request, requesttype, value,
         index, ((void*)0), 0, MOS_WDR_TIMEOUT);
 if (status < 0)
  dev_err(&usbdev->dev,
   "mos7720: usb_control_msg() failed: %d\n", status);
 return status;
}
