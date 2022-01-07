
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct port_data {scalar_t__ port_number; TYPE_1__* charger; } ;
struct TYPE_2__ {scalar_t__ num_usbpd_ports; } ;



__attribute__((used)) static bool cros_usbpd_charger_port_is_dedicated(struct port_data *port)
{
 return port->port_number >= port->charger->num_usbpd_ports;
}
