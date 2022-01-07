
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_device {int dummy; } ;
struct usb_ctrlrequest {void* wLength; void* wIndex; void* wValue; int bRequest; int bRequestType; } ;
struct moschip_port {unsigned char* ctrl_buf; int flags; TYPE_3__* control_urb; struct usb_ctrlrequest* dr; TYPE_2__* port; } ;
typedef int __u16 ;
struct TYPE_7__ {int transfer_buffer_length; } ;
struct TYPE_6__ {TYPE_1__* serial; } ;
struct TYPE_5__ {struct usb_device* dev; } ;


 int EBUSY ;
 int GFP_ATOMIC ;
 int MCS_RDREQ ;
 int MCS_RD_RTYPE ;
 int MOS7840_FLAG_CTRL_BUSY ;
 int clear_bit_unlock (int ,int *) ;
 void* cpu_to_le16 (int) ;
 int mos7840_control_callback ;
 scalar_t__ test_and_set_bit_lock (int ,int *) ;
 int usb_fill_control_urb (TYPE_3__*,struct usb_device*,int ,unsigned char*,unsigned char*,int,int ,struct moschip_port*) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;
 int usb_submit_urb (TYPE_3__*,int ) ;

__attribute__((used)) static int mos7840_get_reg(struct moschip_port *mcs, __u16 Wval, __u16 reg,
      __u16 *val)
{
 struct usb_device *dev = mcs->port->serial->dev;
 struct usb_ctrlrequest *dr = mcs->dr;
 unsigned char *buffer = mcs->ctrl_buf;
 int ret;

 if (test_and_set_bit_lock(MOS7840_FLAG_CTRL_BUSY, &mcs->flags))
  return -EBUSY;

 dr->bRequestType = MCS_RD_RTYPE;
 dr->bRequest = MCS_RDREQ;
 dr->wValue = cpu_to_le16(Wval);
 dr->wIndex = cpu_to_le16(reg);
 dr->wLength = cpu_to_le16(2);

 usb_fill_control_urb(mcs->control_urb, dev, usb_rcvctrlpipe(dev, 0),
        (unsigned char *)dr, buffer, 2,
        mos7840_control_callback, mcs);
 mcs->control_urb->transfer_buffer_length = 2;
 ret = usb_submit_urb(mcs->control_urb, GFP_ATOMIC);
 if (ret)
  clear_bit_unlock(MOS7840_FLAG_CTRL_BUSY, &mcs->flags);

 return ret;
}
