
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_wwan_port_private {int rts_state; int dtr_state; } ;
struct usb_wwan_intf_private {int use_send_setup; } ;
struct usb_serial_port {int serial; } ;


 struct usb_wwan_intf_private* usb_get_serial_data (int ) ;
 struct usb_wwan_port_private* usb_get_serial_port_data (struct usb_serial_port*) ;
 int usb_wwan_send_setup (struct usb_serial_port*) ;

void usb_wwan_dtr_rts(struct usb_serial_port *port, int on)
{
 struct usb_wwan_port_private *portdata;
 struct usb_wwan_intf_private *intfdata;

 intfdata = usb_get_serial_data(port->serial);

 if (!intfdata->use_send_setup)
  return;

 portdata = usb_get_serial_port_data(port);

 portdata->rts_state = on;
 portdata->dtr_state = on;

 usb_wwan_send_setup(port);
}
