
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct wahc {int usb_dev; TYPE_1__* usb_iface; } ;
struct usb_rpipe_descriptor {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {struct device dev; } ;


 int EINVAL ;
 int USB_CTRL_GET_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_DT_RPIPE ;
 int USB_RECIP_RPIPE ;
 int USB_REQ_GET_DESCRIPTOR ;
 int USB_TYPE_CLASS ;
 int dev_err (struct device*,char*,int ,int,...) ;
 int usb_control_msg (int ,int ,int ,int,int,int ,struct usb_rpipe_descriptor*,int,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int __rpipe_get_descr(struct wahc *wa,
        struct usb_rpipe_descriptor *descr, u16 index)
{
 ssize_t result;
 struct device *dev = &wa->usb_iface->dev;




 result = usb_control_msg(
  wa->usb_dev, usb_rcvctrlpipe(wa->usb_dev, 0),
  USB_REQ_GET_DESCRIPTOR,
  USB_DIR_IN | USB_TYPE_CLASS | USB_RECIP_RPIPE,
  USB_DT_RPIPE<<8, index, descr, sizeof(*descr),
  USB_CTRL_GET_TIMEOUT);
 if (result < 0) {
  dev_err(dev, "rpipe %u: get descriptor failed: %d\n",
   index, (int)result);
  goto error;
 }
 if (result < sizeof(*descr)) {
  dev_err(dev, "rpipe %u: got short descriptor "
   "(%zd vs %zd bytes needed)\n",
   index, result, sizeof(*descr));
  result = -EINVAL;
  goto error;
 }
 result = 0;

error:
 return result;
}
