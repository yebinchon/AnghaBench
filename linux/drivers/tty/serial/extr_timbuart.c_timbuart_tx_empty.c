
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {scalar_t__ membase; } ;


 scalar_t__ TIMBUART_ISR ;
 unsigned int TIOCSER_TEMT ;
 int TXBE ;
 int ioread32 (scalar_t__) ;

__attribute__((used)) static unsigned int timbuart_tx_empty(struct uart_port *port)
{
 u32 isr = ioread32(port->membase + TIMBUART_ISR);

 return (isr & TXBE) ? TIOCSER_TEMT : 0;
}
