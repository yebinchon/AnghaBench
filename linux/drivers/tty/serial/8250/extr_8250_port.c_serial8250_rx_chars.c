
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {TYPE_1__* state; } ;
struct uart_8250_port {struct uart_port port; } ;
struct TYPE_2__ {int port; } ;


 int UART_LSR ;
 unsigned char UART_LSR_BI ;
 unsigned char UART_LSR_DR ;
 int serial8250_read_char (struct uart_8250_port*,unsigned char) ;
 unsigned char serial_in (struct uart_8250_port*,int ) ;
 int tty_flip_buffer_push (int *) ;

unsigned char serial8250_rx_chars(struct uart_8250_port *up, unsigned char lsr)
{
 struct uart_port *port = &up->port;
 int max_count = 256;

 do {
  serial8250_read_char(up, lsr);
  if (--max_count == 0)
   break;
  lsr = serial_in(up, UART_LSR);
 } while (lsr & (UART_LSR_DR | UART_LSR_BI));

 tty_flip_buffer_push(&port->state->port);
 return lsr;
}
