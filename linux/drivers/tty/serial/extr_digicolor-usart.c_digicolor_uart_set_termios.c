
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct uart_port {int uartclk; int read_status_mask; int ignore_status_mask; int lock; scalar_t__ membase; } ;
struct ktermios {int c_cflag; int c_iflag; } ;


 int BRKINT ;
 int CMSPAR ;
 int CREAD ;


 int CSIZE ;
 int CSTOPB ;
 int IGNBRK ;
 int INPCK ;
 int PARENB ;
 int PARODD ;
 scalar_t__ UA_CONFIG ;
 unsigned int UA_CONFIG_CHAR_LEN ;
 unsigned int UA_CONFIG_ODD_PARITY ;
 unsigned int UA_CONFIG_PARITY ;
 unsigned int UA_CONFIG_STOP_BITS ;
 scalar_t__ UA_HBAUD_HI ;
 scalar_t__ UA_HBAUD_LO ;
 int UA_STATUS_FRAME_ERR ;
 int UA_STATUS_OVERRUN_ERR ;
 int UA_STATUS_PARITY_ERR ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned int uart_get_baud_rate (struct uart_port*,struct ktermios*,struct ktermios*,int,int) ;
 int uart_get_divisor (struct uart_port*,unsigned int) ;
 int uart_update_timeout (struct uart_port*,int,unsigned int) ;
 int writeb_relaxed (unsigned int,scalar_t__) ;

__attribute__((used)) static void digicolor_uart_set_termios(struct uart_port *port,
           struct ktermios *termios,
           struct ktermios *old)
{
 unsigned int baud, divisor;
 u8 config = 0;
 unsigned long flags;


 termios->c_cflag &= ~CMSPAR;
 termios->c_iflag &= ~(BRKINT | IGNBRK);


 baud = uart_get_baud_rate(port, termios, old,
      port->uartclk / (0x10000*16),
      port->uartclk / 256);
 divisor = uart_get_divisor(port, baud) - 1;

 switch (termios->c_cflag & CSIZE) {
 case 129:
  break;
 case 128:
 default:
  config |= UA_CONFIG_CHAR_LEN;
  break;
 }

 if (termios->c_cflag & CSTOPB)
  config |= UA_CONFIG_STOP_BITS;

 if (termios->c_cflag & PARENB) {
  config |= UA_CONFIG_PARITY;
  if (termios->c_cflag & PARODD)
   config |= UA_CONFIG_ODD_PARITY;
 }


 port->read_status_mask = UA_STATUS_OVERRUN_ERR;
 if (termios->c_iflag & INPCK)
  port->read_status_mask |= UA_STATUS_PARITY_ERR
   | UA_STATUS_FRAME_ERR;


 port->ignore_status_mask = 0;
 if (!(termios->c_cflag & CREAD))
  port->ignore_status_mask |= UA_STATUS_OVERRUN_ERR
   | UA_STATUS_PARITY_ERR | UA_STATUS_FRAME_ERR;

 spin_lock_irqsave(&port->lock, flags);

 uart_update_timeout(port, termios->c_cflag, baud);

 writeb_relaxed(config, port->membase + UA_CONFIG);
 writeb_relaxed(divisor & 0xff, port->membase + UA_HBAUD_LO);
 writeb_relaxed(divisor >> 8, port->membase + UA_HBAUD_HI);

 spin_unlock_irqrestore(&port->lock, flags);
}
