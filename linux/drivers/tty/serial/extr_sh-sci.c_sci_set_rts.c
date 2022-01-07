
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct uart_port {scalar_t__ type; } ;
struct TYPE_2__ {scalar_t__ size; } ;


 scalar_t__ PORT_SCIFA ;
 scalar_t__ PORT_SCIFB ;
 int SCPCR ;
 int SCPCR_RTSC ;
 int SCPDR ;
 int SCPDR_RTSD ;
 int SCSPTR ;
 int SCSPTR_RTSDT ;
 TYPE_1__* sci_getreg (struct uart_port*,int ) ;
 int serial_port_in (struct uart_port*,int ) ;
 int serial_port_out (struct uart_port*,int ,int) ;

__attribute__((used)) static void sci_set_rts(struct uart_port *port, bool state)
{
 if (port->type == PORT_SCIFA || port->type == PORT_SCIFB) {
  u16 data = serial_port_in(port, SCPDR);


  if (state)
   data &= ~SCPDR_RTSD;
  else
   data |= SCPDR_RTSD;
  serial_port_out(port, SCPDR, data);


  serial_port_out(port, SCPCR,
    serial_port_in(port, SCPCR) | SCPCR_RTSC);
 } else if (sci_getreg(port, SCSPTR)->size) {
  u16 ctrl = serial_port_in(port, SCSPTR);


  if (state)
   ctrl &= ~SCSPTR_RTSDT;
  else
   ctrl |= SCSPTR_RTSDT;
  serial_port_out(port, SCSPTR, ctrl);
 }
}
