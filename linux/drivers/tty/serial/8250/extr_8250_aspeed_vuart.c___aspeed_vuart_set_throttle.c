
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_8250_port {unsigned char ier; } ;


 int UART_IER ;
 unsigned char UART_IER_RDI ;
 unsigned char UART_IER_RLSI ;
 int serial_out (struct uart_8250_port*,int ,unsigned char) ;

__attribute__((used)) static void __aspeed_vuart_set_throttle(struct uart_8250_port *up,
  bool throttle)
{
 unsigned char irqs = UART_IER_RLSI | UART_IER_RDI;

 up->ier &= ~irqs;
 if (!throttle)
  up->ier |= irqs;
 serial_out(up, UART_IER, up->ier);
}
