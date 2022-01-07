
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_device {int dummy; } ;
struct usb_ctrlrequest {void* wLength; void* wIndex; void* wValue; int bRequest; int bRequestType; } ;
struct moschip_port {int led_urb; struct usb_ctrlrequest* led_dr; TYPE_2__* port; } ;
typedef int __u16 ;
struct TYPE_4__ {TYPE_1__* serial; } ;
struct TYPE_3__ {struct usb_device* dev; } ;


 int GFP_ATOMIC ;
 int MCS_WRREQ ;
 int MCS_WR_RTYPE ;
 void* cpu_to_le16 (int ) ;
 int mos7840_set_led_callback ;
 int usb_fill_control_urb (int ,struct usb_device*,int ,unsigned char*,int *,int ,int ,int *) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static void mos7840_set_led_async(struct moschip_port *mcs, __u16 wval,
    __u16 reg)
{
 struct usb_device *dev = mcs->port->serial->dev;
 struct usb_ctrlrequest *dr = mcs->led_dr;

 dr->bRequestType = MCS_WR_RTYPE;
 dr->bRequest = MCS_WRREQ;
 dr->wValue = cpu_to_le16(wval);
 dr->wIndex = cpu_to_le16(reg);
 dr->wLength = cpu_to_le16(0);

 usb_fill_control_urb(mcs->led_urb, dev, usb_sndctrlpipe(dev, 0),
  (unsigned char *)dr, ((void*)0), 0, mos7840_set_led_callback, ((void*)0));

 usb_submit_urb(mcs->led_urb, GFP_ATOMIC);
}
