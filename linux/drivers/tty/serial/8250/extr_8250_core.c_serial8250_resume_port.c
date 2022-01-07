
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int uartclk; } ;
struct uart_8250_port {int capabilities; scalar_t__ canary; struct uart_port port; } ;


 int UART_LCR ;
 int UART_NATSEMI ;
 int ns16550a_goto_highspeed (struct uart_8250_port*) ;
 struct uart_8250_port* serial8250_ports ;
 int serial8250_reg ;
 int serial_port_out (struct uart_port*,int ,int) ;
 int uart_resume_port (int *,struct uart_port*) ;

void serial8250_resume_port(int line)
{
 struct uart_8250_port *up = &serial8250_ports[line];
 struct uart_port *port = &up->port;

 up->canary = 0;

 if (up->capabilities & UART_NATSEMI) {

  serial_port_out(port, UART_LCR, 0xE0);

  ns16550a_goto_highspeed(up);

  serial_port_out(port, UART_LCR, 0);
  port->uartclk = 921600*16;
 }
 uart_resume_port(&serial8250_reg, port);
}
