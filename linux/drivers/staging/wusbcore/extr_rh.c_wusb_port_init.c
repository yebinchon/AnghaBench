
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusb_port {int status; } ;


 int USB_PORT_STAT_HIGH_SPEED ;

__attribute__((used)) static void wusb_port_init(struct wusb_port *port)
{
 port->status |= USB_PORT_STAT_HIGH_SPEED;
}
