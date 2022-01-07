
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {scalar_t__ sysrq; } ;


 int HZ ;
 scalar_t__ jiffies ;

int usb_serial_handle_break(struct usb_serial_port *port)
{
 if (!port->sysrq) {
  port->sysrq = jiffies + HZ*5;
  return 1;
 }
 port->sysrq = 0;
 return 0;
}
