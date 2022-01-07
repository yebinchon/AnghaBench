
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct usb_serial {TYPE_2__** port; struct usb_device* dev; } ;
struct TYPE_3__ {int idProduct; } ;
struct usb_device {int dev; TYPE_1__ descriptor; } ;
struct urb {int complete; } ;
typedef int __u8 ;
struct TYPE_4__ {struct urb* interrupt_in_urb; } ;


 int GFP_KERNEL ;
 int MOS7720_LSR ;
 scalar_t__ MOSCHIP_DEVICE_ID_7715 ;
 int dev_dbg (int *,char*,char) ;
 int dev_err (int *,char*,int) ;
 scalar_t__ le16_to_cpu (int ) ;
 int mos7715_interrupt_callback ;
 int mos7715_parport_init (struct usb_serial*) ;
 int read_mos_reg (struct usb_serial*,int ,int ,char*) ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int,int,int *,int,int) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static int mos7720_startup(struct usb_serial *serial)
{
 struct usb_device *dev;
 char data;
 u16 product;
 int ret_val;

 product = le16_to_cpu(serial->dev->descriptor.idProduct);
 dev = serial->dev;


 usb_control_msg(serial->dev, usb_sndctrlpipe(serial->dev, 0),
   (__u8)0x03, 0x00, 0x01, 0x00, ((void*)0), 0x00, 5000);

 if (product == MOSCHIP_DEVICE_ID_7715) {
  struct urb *urb = serial->port[0]->interrupt_in_urb;

  urb->complete = mos7715_interrupt_callback;






 }

 ret_val = usb_submit_urb(serial->port[0]->interrupt_in_urb, GFP_KERNEL);
 if (ret_val) {
  dev_err(&dev->dev, "failed to submit interrupt urb: %d\n",
   ret_val);
 }


 read_mos_reg(serial, 0, MOS7720_LSR, &data);
 dev_dbg(&dev->dev, "LSR:%x\n", data);

 return 0;
}
