
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {scalar_t__ membase; } ;


 int RXFLAGS ;
 scalar_t__ TIMBUART_IER ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;

__attribute__((used)) static void timbuart_stop_rx(struct uart_port *port)
{

 u32 ier = ioread32(port->membase + TIMBUART_IER) & ~RXFLAGS;
 iowrite32(ier, port->membase + TIMBUART_IER);
}
