
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ type; } ;


 scalar_t__ PORT_SCIFA ;
 scalar_t__ PORT_SCIFB ;
 int SCSCR ;
 unsigned short SCSCR_RDRQE ;
 unsigned short port_rx_irq_mask (struct uart_port*) ;
 unsigned short serial_port_in (struct uart_port*,int ) ;
 int serial_port_out (struct uart_port*,int ,unsigned short) ;

__attribute__((used)) static void sci_start_rx(struct uart_port *port)
{
 unsigned short ctrl;

 ctrl = serial_port_in(port, SCSCR) | port_rx_irq_mask(port);

 if (port->type == PORT_SCIFA || port->type == PORT_SCIFB)
  ctrl &= ~SCSCR_RDRQE;

 serial_port_out(port, SCSCR, ctrl);
}
