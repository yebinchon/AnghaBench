
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_serial_port {TYPE_4__* serial; } ;
struct usb_device {int dummy; } ;
struct TYPE_8__ {TYPE_3__* interface; struct usb_device* dev; } ;
struct TYPE_7__ {TYPE_2__* cur_altsetting; } ;
struct TYPE_5__ {int bInterfaceNumber; } ;
struct TYPE_6__ {TYPE_1__ desc; } ;


 int GSI_VENDOR_OPENCLOSE ;
 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_VENDOR ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int,int ,int *,int ,int) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int usb_gsi_openclose(struct usb_serial_port *port, int value)
{
 struct usb_device *dev = port->serial->dev;

 return usb_control_msg(
  dev,
  usb_sndctrlpipe(dev, 0),
  GSI_VENDOR_OPENCLOSE,
  USB_DIR_OUT|USB_TYPE_VENDOR|USB_RECIP_INTERFACE,
  value,
  port->serial->interface->cur_altsetting->desc.bInterfaceNumber,
  ((void*)0), 0,
  5000);
}
