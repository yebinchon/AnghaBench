
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct moschip_port {struct moschip_port* dr; struct moschip_port* ctrl_buf; int control_urb; struct moschip_port* led_dr; int led_urb; int led_timer2; int led_timer1; scalar_t__ has_led; } ;


 int MODEM_CONTROL_REGISTER ;
 int del_timer_sync (int *) ;
 int kfree (struct moschip_port*) ;
 struct moschip_port* mos7840_get_port_private (struct usb_serial_port*) ;
 int mos7840_set_led_sync (struct usb_serial_port*,int ,int) ;
 int usb_free_urb (int ) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static int mos7840_port_remove(struct usb_serial_port *port)
{
 struct moschip_port *mos7840_port;

 mos7840_port = mos7840_get_port_private(port);

 if (mos7840_port->has_led) {

  mos7840_set_led_sync(port, MODEM_CONTROL_REGISTER, 0x0300);

  del_timer_sync(&mos7840_port->led_timer1);
  del_timer_sync(&mos7840_port->led_timer2);

  usb_kill_urb(mos7840_port->led_urb);
  usb_free_urb(mos7840_port->led_urb);
  kfree(mos7840_port->led_dr);
 }
 usb_kill_urb(mos7840_port->control_urb);
 usb_free_urb(mos7840_port->control_urb);
 kfree(mos7840_port->ctrl_buf);
 kfree(mos7840_port->dr);
 kfree(mos7840_port);

 return 0;
}
