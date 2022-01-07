
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int line; } ;
struct TYPE_2__ {scalar_t__ type; scalar_t__ iobase; } ;
struct uart_8250_port {TYPE_1__ port; } ;


 scalar_t__ PORT_UNKNOWN ;
 int nr_uarts ;
 struct uart_8250_port* serial8250_ports ;
 scalar_t__ uart_match_port (TYPE_1__*,struct uart_port*) ;

__attribute__((used)) static struct uart_8250_port *serial8250_find_match_or_unused(struct uart_port *port)
{
 int i;




 for (i = 0; i < nr_uarts; i++)
  if (uart_match_port(&serial8250_ports[i].port, port))
   return &serial8250_ports[i];


 i = port->line;
 if (i < nr_uarts && serial8250_ports[i].port.type == PORT_UNKNOWN &&
   serial8250_ports[i].port.iobase == 0)
  return &serial8250_ports[i];





 for (i = 0; i < nr_uarts; i++)
  if (serial8250_ports[i].port.type == PORT_UNKNOWN &&
      serial8250_ports[i].port.iobase == 0)
   return &serial8250_ports[i];





 for (i = 0; i < nr_uarts; i++)
  if (serial8250_ports[i].port.type == PORT_UNKNOWN)
   return &serial8250_ports[i];

 return ((void*)0);
}
