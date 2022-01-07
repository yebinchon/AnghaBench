
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int bulk_out_endpointAddress; scalar_t__ interrupt_in_urb; struct usb_serial* serial; } ;
struct usb_serial {int num_ports; int interface; int dev; } ;
struct sierra_port_private {scalar_t__ rts_state; scalar_t__ dtr_state; } ;
typedef int __u16 ;


 int USB_CTRL_SET_TIMEOUT ;
 int sierra_interface_num (struct usb_serial*) ;
 int usb_autopm_get_interface (int ) ;
 int usb_autopm_put_interface (int ) ;
 int usb_control_msg (int ,int ,int,int,int,int,int *,int ,int ) ;
 struct sierra_port_private* usb_get_serial_port_data (struct usb_serial_port*) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int sierra_send_setup(struct usb_serial_port *port)
{
 struct usb_serial *serial = port->serial;
 struct sierra_port_private *portdata;
 __u16 interface = 0;
 int val = 0;
 int do_send = 0;
 int retval;

 portdata = usb_get_serial_port_data(port);

 if (portdata->dtr_state)
  val |= 0x01;
 if (portdata->rts_state)
  val |= 0x02;


 if (serial->num_ports == 1) {
  interface = sierra_interface_num(serial);



  if (port->interrupt_in_urb) {

   do_send = 1;
  }
 }


 else {
  if (port->bulk_out_endpointAddress == 2)
   interface = 0;
  else if (port->bulk_out_endpointAddress == 4)
   interface = 1;
  else if (port->bulk_out_endpointAddress == 5)
   interface = 2;

  do_send = 1;
 }
 if (!do_send)
  return 0;

 retval = usb_autopm_get_interface(serial->interface);
 if (retval < 0)
  return retval;

 retval = usb_control_msg(serial->dev, usb_sndctrlpipe(serial->dev, 0),
  0x22, 0x21, val, interface, ((void*)0), 0, USB_CTRL_SET_TIMEOUT);
 usb_autopm_put_interface(serial->interface);

 return retval;
}
