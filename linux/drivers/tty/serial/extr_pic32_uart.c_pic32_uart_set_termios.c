
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int uartclk; int lock; } ;
struct pic32_sport {scalar_t__ hw_flow_ctrl; } ;
struct ktermios {int c_cflag; } ;


 int CMSPAR ;
 int CRTSCTS ;
 int CS8 ;
 int CSTOPB ;
 int PARENB ;
 int PARODD ;
 int PIC32_CLR (int ) ;
 int PIC32_SET (int ) ;
 int PIC32_UART_BRG ;
 int PIC32_UART_MODE ;
 unsigned int PIC32_UART_MODE_PDSEL0 ;
 unsigned int PIC32_UART_MODE_PDSEL1 ;
 unsigned int PIC32_UART_MODE_RTSMD ;
 unsigned int PIC32_UART_MODE_STSEL ;
 unsigned int PIC32_UART_MODE_UEN0 ;
 unsigned int PIC32_UART_MODE_UEN1 ;
 int pic32_uart_dsbl_and_mask (struct uart_port*) ;
 int pic32_uart_en_and_unmask (struct uart_port*) ;
 int pic32_uart_writel (struct pic32_sport*,int ,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct pic32_sport* to_pic32_sport (struct uart_port*) ;
 scalar_t__ tty_termios_baud_rate (struct ktermios*) ;
 int tty_termios_encode_baud_rate (struct ktermios*,unsigned int,unsigned int) ;
 unsigned int uart_get_baud_rate (struct uart_port*,struct ktermios*,struct ktermios*,int ,int) ;
 int uart_get_divisor (struct uart_port*,unsigned int) ;
 int uart_update_timeout (struct uart_port*,int,unsigned int) ;

__attribute__((used)) static void pic32_uart_set_termios(struct uart_port *port,
       struct ktermios *new,
       struct ktermios *old)
{
 struct pic32_sport *sport = to_pic32_sport(port);
 unsigned int baud;
 unsigned int quot;
 unsigned long flags;

 spin_lock_irqsave(&port->lock, flags);


 pic32_uart_dsbl_and_mask(port);


 if (new->c_cflag & CSTOPB)
  pic32_uart_writel(sport, PIC32_SET(PIC32_UART_MODE),
     PIC32_UART_MODE_STSEL);
 else
  pic32_uart_writel(sport, PIC32_CLR(PIC32_UART_MODE),
     PIC32_UART_MODE_STSEL);


 if (new->c_cflag & PARENB) {
  if (new->c_cflag & PARODD) {
   pic32_uart_writel(sport, PIC32_SET(PIC32_UART_MODE),
     PIC32_UART_MODE_PDSEL1);
   pic32_uart_writel(sport, PIC32_CLR(PIC32_UART_MODE),
     PIC32_UART_MODE_PDSEL0);
  } else {
   pic32_uart_writel(sport, PIC32_SET(PIC32_UART_MODE),
     PIC32_UART_MODE_PDSEL0);
   pic32_uart_writel(sport, PIC32_CLR(PIC32_UART_MODE),
     PIC32_UART_MODE_PDSEL1);
  }
 } else {
  pic32_uart_writel(sport, PIC32_CLR(PIC32_UART_MODE),
     PIC32_UART_MODE_PDSEL1 |
     PIC32_UART_MODE_PDSEL0);
 }

 if ((new->c_cflag & CRTSCTS) && sport->hw_flow_ctrl) {

  pic32_uart_writel(sport, PIC32_SET(PIC32_UART_MODE),
     PIC32_UART_MODE_UEN1);
  pic32_uart_writel(sport, PIC32_CLR(PIC32_UART_MODE),
     PIC32_UART_MODE_UEN0);
  pic32_uart_writel(sport, PIC32_CLR(PIC32_UART_MODE),
     PIC32_UART_MODE_RTSMD);
 } else {

  pic32_uart_writel(sport, PIC32_CLR(PIC32_UART_MODE),
     PIC32_UART_MODE_UEN1);
  pic32_uart_writel(sport, PIC32_CLR(PIC32_UART_MODE),
     PIC32_UART_MODE_UEN0);
  pic32_uart_writel(sport, PIC32_CLR(PIC32_UART_MODE),
     PIC32_UART_MODE_RTSMD);
 }


 new->c_cflag |= CS8;


 new->c_cflag &= ~CMSPAR;


 baud = uart_get_baud_rate(port, new, old, 0, port->uartclk / 16);
 quot = uart_get_divisor(port, baud) - 1;
 pic32_uart_writel(sport, PIC32_UART_BRG, quot);
 uart_update_timeout(port, new->c_cflag, baud);

 if (tty_termios_baud_rate(new))
  tty_termios_encode_baud_rate(new, baud, baud);


 pic32_uart_en_and_unmask(port);

 spin_unlock_irqrestore(&port->lock, flags);
}
