
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {unsigned int uartclk; int lock; } ;
struct ktermios {int c_cflag; } ;


 int ALTERA_UART_DIVISOR_REG ;
 int altera_uart_writel (struct uart_port*,unsigned int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_termios_copy_hw (struct ktermios*,struct ktermios*) ;
 int tty_termios_encode_baud_rate (struct ktermios*,unsigned int,unsigned int) ;
 unsigned int uart_get_baud_rate (struct uart_port*,struct ktermios*,struct ktermios*,int ,int) ;
 int uart_update_timeout (struct uart_port*,int ,unsigned int) ;

__attribute__((used)) static void altera_uart_set_termios(struct uart_port *port,
        struct ktermios *termios,
        struct ktermios *old)
{
 unsigned long flags;
 unsigned int baud, baudclk;

 baud = uart_get_baud_rate(port, termios, old, 0, 4000000);
 baudclk = port->uartclk / baud;

 if (old)
  tty_termios_copy_hw(termios, old);
 tty_termios_encode_baud_rate(termios, baud, baud);

 spin_lock_irqsave(&port->lock, flags);
 uart_update_timeout(port, termios->c_cflag, baud);
 altera_uart_writel(port, baudclk, ALTERA_UART_DIVISOR_REG);
 spin_unlock_irqrestore(&port->lock, flags);






}
