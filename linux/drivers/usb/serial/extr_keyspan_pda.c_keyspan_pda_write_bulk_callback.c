
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int write_urbs_free; } ;
struct urb {struct usb_serial_port* context; } ;
struct keyspan_pda_private {int wakeup_work; } ;


 int schedule_work (int *) ;
 int set_bit (int ,int *) ;
 struct keyspan_pda_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static void keyspan_pda_write_bulk_callback(struct urb *urb)
{
 struct usb_serial_port *port = urb->context;
 struct keyspan_pda_private *priv;

 set_bit(0, &port->write_urbs_free);
 priv = usb_get_serial_port_data(port);


 schedule_work(&priv->wakeup_work);
}
