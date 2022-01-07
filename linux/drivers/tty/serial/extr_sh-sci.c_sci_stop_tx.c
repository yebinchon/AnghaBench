
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ type; } ;


 scalar_t__ PORT_SCIFA ;
 scalar_t__ PORT_SCIFB ;
 int SCSCR ;
 unsigned short SCSCR_TDRQE ;
 unsigned short SCSCR_TIE ;
 unsigned short serial_port_in (struct uart_port*,int ) ;
 int serial_port_out (struct uart_port*,int ,unsigned short) ;

__attribute__((used)) static void sci_stop_tx(struct uart_port *port)
{
 unsigned short ctrl;


 ctrl = serial_port_in(port, SCSCR);

 if (port->type == PORT_SCIFA || port->type == PORT_SCIFB)
  ctrl &= ~SCSCR_TDRQE;

 ctrl &= ~SCSCR_TIE;

 serial_port_out(port, SCSCR, ctrl);
}
