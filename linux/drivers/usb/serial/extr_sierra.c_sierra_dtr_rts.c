
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct sierra_port_private {int rts_state; int dtr_state; } ;


 int sierra_send_setup (struct usb_serial_port*) ;
 struct sierra_port_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static void sierra_dtr_rts(struct usb_serial_port *port, int on)
{
 struct sierra_port_private *portdata;

 portdata = usb_get_serial_port_data(port);
 portdata->rts_state = on;
 portdata->dtr_state = on;

 sierra_send_setup(port);
}
