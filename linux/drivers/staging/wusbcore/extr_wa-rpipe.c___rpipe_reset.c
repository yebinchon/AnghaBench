
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wahc {int usb_dev; TYPE_1__* usb_iface; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int USB_CTRL_SET_TIMEOUT ;
 int USB_DIR_OUT ;
 int USB_RECIP_RPIPE ;
 int USB_REQ_RPIPE_RESET ;
 int USB_TYPE_CLASS ;
 int dev_err (struct device*,char*,unsigned int,int) ;
 int usb_control_msg (int ,int ,int ,int,int ,unsigned int,int *,int ,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int __rpipe_reset(struct wahc *wa, unsigned index)
{
 int result;
 struct device *dev = &wa->usb_iface->dev;

 result = usb_control_msg(
  wa->usb_dev, usb_sndctrlpipe(wa->usb_dev, 0),
  USB_REQ_RPIPE_RESET,
  USB_DIR_OUT | USB_TYPE_CLASS | USB_RECIP_RPIPE,
  0, index, ((void*)0), 0, USB_CTRL_SET_TIMEOUT);
 if (result < 0)
  dev_err(dev, "rpipe %u: reset failed: %d\n",
   index, result);
 return result;
}
