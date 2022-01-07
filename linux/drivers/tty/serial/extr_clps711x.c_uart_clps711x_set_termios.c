
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct uart_port {int uartclk; int read_status_mask; int ignore_status_mask; scalar_t__ membase; } ;
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
 int UARTDR_FRMERR ;
 int UARTDR_OVERR ;
 int UARTDR_PARERR ;
 unsigned int UBRLCR_EVENPRT ;
 unsigned int UBRLCR_FIFOEN ;
 scalar_t__ UBRLCR_OFFSET ;
 unsigned int UBRLCR_PRTEN ;
 unsigned int UBRLCR_WRDLEN5 ;
 unsigned int UBRLCR_WRDLEN6 ;
 unsigned int UBRLCR_WRDLEN7 ;
 unsigned int UBRLCR_WRDLEN8 ;
 unsigned int UBRLCR_XSTOP ;
 unsigned int uart_get_baud_rate (struct uart_port*,struct ktermios*,struct ktermios*,int,int) ;
 unsigned int uart_get_divisor (struct uart_port*,unsigned int) ;
 int uart_update_timeout (struct uart_port*,int,unsigned int) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void uart_clps711x_set_termios(struct uart_port *port,
          struct ktermios *termios,
          struct ktermios *old)
{
 u32 ubrlcr;
 unsigned int baud, quot;


 termios->c_cflag &= ~CMSPAR;
 termios->c_iflag &= ~(BRKINT | IGNBRK);


 baud = uart_get_baud_rate(port, termios, old, port->uartclk / 4096,
            port->uartclk / 16);
 quot = uart_get_divisor(port, baud);

 switch (termios->c_cflag & CSIZE) {
 case 131:
  ubrlcr = UBRLCR_WRDLEN5;
  break;
 case 130:
  ubrlcr = UBRLCR_WRDLEN6;
  break;
 case 129:
  ubrlcr = UBRLCR_WRDLEN7;
  break;
 case 128:
 default:
  ubrlcr = UBRLCR_WRDLEN8;
  break;
 }

 if (termios->c_cflag & CSTOPB)
  ubrlcr |= UBRLCR_XSTOP;

 if (termios->c_cflag & PARENB) {
  ubrlcr |= UBRLCR_PRTEN;
  if (!(termios->c_cflag & PARODD))
   ubrlcr |= UBRLCR_EVENPRT;
 }


 ubrlcr |= UBRLCR_FIFOEN;


 port->read_status_mask = UARTDR_OVERR;
 if (termios->c_iflag & INPCK)
  port->read_status_mask |= UARTDR_PARERR | UARTDR_FRMERR;


 port->ignore_status_mask = 0;
 if (!(termios->c_cflag & CREAD))
  port->ignore_status_mask |= UARTDR_OVERR | UARTDR_PARERR |
         UARTDR_FRMERR;

 uart_update_timeout(port, termios->c_cflag, baud);

 writel(ubrlcr | (quot - 1), port->membase + UBRLCR_OFFSET);
}
