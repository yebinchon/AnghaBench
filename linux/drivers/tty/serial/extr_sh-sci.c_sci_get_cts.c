
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {scalar_t__ type; } ;
struct TYPE_2__ {scalar_t__ size; } ;


 scalar_t__ PORT_SCIFA ;
 scalar_t__ PORT_SCIFB ;
 int SCPDR ;
 int SCPDR_CTSD ;
 int SCSPTR ;
 int SCSPTR_CTSDT ;
 TYPE_1__* sci_getreg (struct uart_port*,int ) ;
 int serial_port_in (struct uart_port*,int ) ;

__attribute__((used)) static bool sci_get_cts(struct uart_port *port)
{
 if (port->type == PORT_SCIFA || port->type == PORT_SCIFB) {

  return !(serial_port_in(port, SCPDR) & SCPDR_CTSD);
 } else if (sci_getreg(port, SCSPTR)->size) {

  return !(serial_port_in(port, SCSPTR) & SCSPTR_CTSDT);
 }

 return 1;
}
