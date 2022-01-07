
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int uartclk; } ;
struct ktermios {int c_iflag; int c_cflag; } ;


 int sunsu_change_speed (struct uart_port*,int ,int ,unsigned int) ;
 unsigned int uart_get_baud_rate (struct uart_port*,struct ktermios*,struct ktermios*,int ,int) ;
 unsigned int uart_get_divisor (struct uart_port*,unsigned int) ;

__attribute__((used)) static void
sunsu_set_termios(struct uart_port *port, struct ktermios *termios,
    struct ktermios *old)
{
 unsigned int baud, quot;




 baud = uart_get_baud_rate(port, termios, old, 0, port->uartclk/16);
 quot = uart_get_divisor(port, baud);

 sunsu_change_speed(port, termios->c_cflag, termios->c_iflag, quot);
}
