
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int brk; int frame; int parity; int overrun; } ;
struct uart_port {TYPE_1__ icount; } ;
struct men_z135_port {int stat_reg; struct uart_port port; } ;


 int MEN_Z135_LSR_BI ;
 int MEN_Z135_LSR_FE ;
 int MEN_Z135_LSR_OE ;
 int MEN_Z135_LSR_PE ;
 int uart_handle_break (struct uart_port*) ;

__attribute__((used)) static void men_z135_handle_lsr(struct men_z135_port *uart)
{
 struct uart_port *port = &uart->port;
 u8 lsr;

 lsr = (uart->stat_reg >> 16) & 0xff;

 if (lsr & MEN_Z135_LSR_OE)
  port->icount.overrun++;
 if (lsr & MEN_Z135_LSR_PE)
  port->icount.parity++;
 if (lsr & MEN_Z135_LSR_FE)
  port->icount.frame++;
 if (lsr & MEN_Z135_LSR_BI) {
  port->icount.brk++;
  uart_handle_break(port);
 }
}
