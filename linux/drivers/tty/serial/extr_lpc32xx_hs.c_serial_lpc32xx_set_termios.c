
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct uart_port {int uartclk; int lock; int membase; } ;
struct ktermios {int c_cflag; } ;


 int CLOCAL ;
 int CMSPAR ;
 int CREAD ;
 int CRTSCTS ;
 int CS8 ;
 int CSIZE ;
 int CSTOPB ;
 int HUPCL ;
 int LPC32XX_HSUART_CTRL (int ) ;
 int LPC32XX_HSUART_RATE (int ) ;
 unsigned int LPC32XX_HSU_ERR_INT_EN ;
 unsigned int LPC32XX_HSU_RX_INT_EN ;
 int PARENB ;
 int PARODD ;
 unsigned int __serial_get_clock_div (int,unsigned int) ;
 unsigned int readl (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ tty_termios_baud_rate (struct ktermios*) ;
 int tty_termios_encode_baud_rate (struct ktermios*,unsigned int,unsigned int) ;
 unsigned int uart_get_baud_rate (struct uart_port*,struct ktermios*,struct ktermios*,int ,int) ;
 int uart_update_timeout (struct uart_port*,int,unsigned int) ;
 int writel (unsigned int,int ) ;

__attribute__((used)) static void serial_lpc32xx_set_termios(struct uart_port *port,
           struct ktermios *termios,
           struct ktermios *old)
{
 unsigned long flags;
 unsigned int baud, quot;
 u32 tmp;


 termios->c_cflag &= ~(CSIZE | CSTOPB | PARENB | PARODD);
 termios->c_cflag |= CS8;

 termios->c_cflag &= ~(HUPCL | CMSPAR | CLOCAL | CRTSCTS);

 baud = uart_get_baud_rate(port, termios, old, 0,
      port->uartclk / 14);

 quot = __serial_get_clock_div(port->uartclk, baud);

 spin_lock_irqsave(&port->lock, flags);


 tmp = readl(LPC32XX_HSUART_CTRL(port->membase));
 if ((termios->c_cflag & CREAD) == 0)
  tmp &= ~(LPC32XX_HSU_RX_INT_EN | LPC32XX_HSU_ERR_INT_EN);
 else
  tmp |= LPC32XX_HSU_RX_INT_EN | LPC32XX_HSU_ERR_INT_EN;
 writel(tmp, LPC32XX_HSUART_CTRL(port->membase));

 writel(quot, LPC32XX_HSUART_RATE(port->membase));

 uart_update_timeout(port, termios->c_cflag, baud);

 spin_unlock_irqrestore(&port->lock, flags);


 if (tty_termios_baud_rate(termios))
  tty_termios_encode_baud_rate(termios, baud, baud);
}
