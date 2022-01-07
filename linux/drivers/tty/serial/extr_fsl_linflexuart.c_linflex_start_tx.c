
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ membase; } ;


 unsigned long LINFLEXD_LINIER_DTIE ;
 scalar_t__ LINIER ;
 int linflex_transmit_buffer (struct uart_port*) ;
 unsigned long readl (scalar_t__) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static void linflex_start_tx(struct uart_port *port)
{
 unsigned long ier;

 linflex_transmit_buffer(port);
 ier = readl(port->membase + LINIER);
 writel(ier | LINFLEXD_LINIER_DTIE, port->membase + LINIER);
}
