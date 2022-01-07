
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_wwan_port_private {scalar_t__ rts_state; scalar_t__ dtr_state; } ;
struct usb_serial_port {struct usb_serial* serial; } ;
struct usb_serial {TYPE_3__* interface; int dev; } ;
struct TYPE_7__ {TYPE_2__* cur_altsetting; } ;
struct TYPE_5__ {int bInterfaceNumber; } ;
struct TYPE_6__ {TYPE_1__ desc; } ;


 int USB_CTRL_SET_TIMEOUT ;
 int usb_autopm_get_interface (TYPE_3__*) ;
 int usb_autopm_put_interface (TYPE_3__*) ;
 int usb_control_msg (int ,int ,int,int,int,int,int *,int ,int ) ;
 struct usb_wwan_port_private* usb_get_serial_port_data (struct usb_serial_port*) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int usb_wwan_send_setup(struct usb_serial_port *port)
{
 struct usb_serial *serial = port->serial;
 struct usb_wwan_port_private *portdata;
 int val = 0;
 int ifnum;
 int res;

 portdata = usb_get_serial_port_data(port);

 if (portdata->dtr_state)
  val |= 0x01;
 if (portdata->rts_state)
  val |= 0x02;

 ifnum = serial->interface->cur_altsetting->desc.bInterfaceNumber;

 res = usb_autopm_get_interface(serial->interface);
 if (res)
  return res;

 res = usb_control_msg(serial->dev, usb_sndctrlpipe(serial->dev, 0),
    0x22, 0x21, val, ifnum, ((void*)0), 0,
    USB_CTRL_SET_TIMEOUT);

 usb_autopm_put_interface(port->serial->interface);

 return res;
}
