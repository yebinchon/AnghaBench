
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_interface {TYPE_2__* cur_altsetting; } ;
struct TYPE_3__ {int bInterfaceNumber; } ;
struct TYPE_4__ {TYPE_1__ desc; } ;


 int HZ ;
 int USB_RECIP_INTERFACE ;
 int USB_REQ_SET_REPORT ;
 int USB_TYPE_CLASS ;
 int interface_to_usbdev (struct usb_interface*) ;
 int usb_control_msg (int ,int ,int ,int,unsigned char,int ,void*,int,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int usb_set_report(struct usb_interface *intf, unsigned char type,
     unsigned char id, void *buf, int size)
{
 return usb_control_msg(interface_to_usbdev(intf),
          usb_sndctrlpipe(interface_to_usbdev(intf), 0),
          USB_REQ_SET_REPORT,
          USB_TYPE_CLASS | USB_RECIP_INTERFACE,
          (type << 8) + id,
          intf->cur_altsetting->desc.bInterfaceNumber, buf,
          size, HZ);
}
