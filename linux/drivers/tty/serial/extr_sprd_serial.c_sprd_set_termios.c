
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {unsigned int uartclk; int read_status_mask; int ignore_status_mask; int lock; } ;
struct ktermios {int c_cflag; int c_iflag; } ;


 int BRKINT ;
 int CMSPAR ;
 int CRTSCTS ;




 int CSIZE ;
 int CSTOPB ;
 int IGNBRK ;
 int IGNPAR ;
 int INPCK ;
 int PARENB ;
 int PARMRK ;
 int PARODD ;
 unsigned int RX_HFC_THLD_DEF ;
 unsigned int RX_HW_FLOW_CTL_EN ;
 unsigned int RX_HW_FLOW_CTL_THLD ;
 unsigned int RX_TOUT_THLD_DEF ;
 int SPRD_BAUD_IO_LIMIT ;
 int SPRD_CLKD0 ;
 unsigned int SPRD_CLKD0_MASK ;
 int SPRD_CLKD1 ;
 unsigned int SPRD_CLKD1_MASK ;
 unsigned int SPRD_CLKD1_SHIFT ;
 int SPRD_CTL1 ;
 int SPRD_LCR ;
 unsigned int SPRD_LCR_DATA_LEN5 ;
 unsigned int SPRD_LCR_DATA_LEN6 ;
 unsigned int SPRD_LCR_DATA_LEN7 ;
 unsigned int SPRD_LCR_DATA_LEN8 ;
 unsigned int SPRD_LCR_EVEN_PAR ;
 unsigned int SPRD_LCR_ODD_PAR ;
 unsigned int SPRD_LCR_PARITY ;
 unsigned int SPRD_LCR_PARITY_EN ;
 unsigned int SPRD_LCR_STOP_1BIT ;
 unsigned int SPRD_LCR_STOP_2BIT ;
 int SPRD_LSR_BI ;
 int SPRD_LSR_FE ;
 int SPRD_LSR_OE ;
 int SPRD_LSR_PE ;
 unsigned int TX_HW_FLOW_CTL_EN ;
 unsigned int serial_in (struct uart_port*,int ) ;
 int serial_out (struct uart_port*,int ,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ tty_termios_baud_rate (struct ktermios*) ;
 int tty_termios_encode_baud_rate (struct ktermios*,unsigned int,unsigned int) ;
 unsigned int uart_get_baud_rate (struct uart_port*,struct ktermios*,struct ktermios*,int ,int ) ;
 int uart_update_timeout (struct uart_port*,int,unsigned int) ;

__attribute__((used)) static void sprd_set_termios(struct uart_port *port,
        struct ktermios *termios,
        struct ktermios *old)
{
 unsigned int baud, quot;
 unsigned int lcr = 0, fc;
 unsigned long flags;


 baud = uart_get_baud_rate(port, termios, old, 0, SPRD_BAUD_IO_LIMIT);

 quot = port->uartclk / baud;


 switch (termios->c_cflag & CSIZE) {
 case 131:
  lcr |= SPRD_LCR_DATA_LEN5;
  break;
 case 130:
  lcr |= SPRD_LCR_DATA_LEN6;
  break;
 case 129:
  lcr |= SPRD_LCR_DATA_LEN7;
  break;
 case 128:
 default:
  lcr |= SPRD_LCR_DATA_LEN8;
  break;
 }


 lcr &= ~(SPRD_LCR_STOP_1BIT | SPRD_LCR_STOP_2BIT);
 if (termios->c_cflag & CSTOPB)
  lcr |= SPRD_LCR_STOP_2BIT;
 else
  lcr |= SPRD_LCR_STOP_1BIT;


 lcr &= ~SPRD_LCR_PARITY;
 termios->c_cflag &= ~CMSPAR;
 if (termios->c_cflag & PARENB) {
  lcr |= SPRD_LCR_PARITY_EN;
  if (termios->c_cflag & PARODD)
   lcr |= SPRD_LCR_ODD_PAR;
  else
   lcr |= SPRD_LCR_EVEN_PAR;
 }

 spin_lock_irqsave(&port->lock, flags);


 uart_update_timeout(port, termios->c_cflag, baud);

 port->read_status_mask = SPRD_LSR_OE;
 if (termios->c_iflag & INPCK)
  port->read_status_mask |= SPRD_LSR_FE | SPRD_LSR_PE;
 if (termios->c_iflag & (IGNBRK | BRKINT | PARMRK))
  port->read_status_mask |= SPRD_LSR_BI;


 port->ignore_status_mask = 0;
 if (termios->c_iflag & IGNPAR)
  port->ignore_status_mask |= SPRD_LSR_PE | SPRD_LSR_FE;
 if (termios->c_iflag & IGNBRK) {
  port->ignore_status_mask |= SPRD_LSR_BI;




  if (termios->c_iflag & IGNPAR)
   port->ignore_status_mask |= SPRD_LSR_OE;
 }


 fc = serial_in(port, SPRD_CTL1);
 fc &= ~(RX_HW_FLOW_CTL_THLD | RX_HW_FLOW_CTL_EN | TX_HW_FLOW_CTL_EN);
 if (termios->c_cflag & CRTSCTS) {
  fc |= RX_HW_FLOW_CTL_THLD;
  fc |= RX_HW_FLOW_CTL_EN;
  fc |= TX_HW_FLOW_CTL_EN;
 }


 serial_out(port, SPRD_CLKD0, quot & SPRD_CLKD0_MASK);


 serial_out(port, SPRD_CLKD1,
     (quot & SPRD_CLKD1_MASK) >> SPRD_CLKD1_SHIFT);
 serial_out(port, SPRD_LCR, lcr);
 fc |= RX_TOUT_THLD_DEF | RX_HFC_THLD_DEF;
 serial_out(port, SPRD_CTL1, fc);

 spin_unlock_irqrestore(&port->lock, flags);


 if (tty_termios_baud_rate(termios))
  tty_termios_encode_baud_rate(termios, baud, baud);
}
