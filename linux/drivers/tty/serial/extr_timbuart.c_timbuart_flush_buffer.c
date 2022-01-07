
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct uart_port {scalar_t__ membase; } ;


 scalar_t__ TIMBUART_CTRL ;
 int TIMBUART_CTRL_FLSHTX ;
 scalar_t__ TIMBUART_ISR ;
 int TXBF ;
 int ioread8 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;
 int iowrite8 (int,scalar_t__) ;
 int timbuart_tx_empty (struct uart_port*) ;

__attribute__((used)) static void timbuart_flush_buffer(struct uart_port *port)
{
 if (!timbuart_tx_empty(port)) {
  u8 ctl = ioread8(port->membase + TIMBUART_CTRL) |
   TIMBUART_CTRL_FLSHTX;

  iowrite8(ctl, port->membase + TIMBUART_CTRL);
  iowrite32(TXBF, port->membase + TIMBUART_ISR);
 }
}
