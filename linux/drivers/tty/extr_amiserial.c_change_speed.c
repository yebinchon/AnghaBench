
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int c_cflag; } ;
struct tty_struct {TYPE_1__ termios; } ;
struct tty_port {int flags; } ;
struct serial_state {int baud_base; int custom_divisor; int quot; int timeout; int xmit_fifo_size; int read_status_mask; int ignore_status_mask; int IER; struct tty_port tport; } ;
struct ktermios {int c_cflag; } ;
struct TYPE_4__ {short serper; } ;


 int ASYNC_HARDPPS_CD ;
 int ASYNC_SPD_CUST ;
 int ASYNC_SPD_MASK ;
 int CBAUD ;
 unsigned int CLOCAL ;
 unsigned int CMSPAR ;
 unsigned int CREAD ;
 unsigned int CRTSCTS ;
 unsigned int CSTOPB ;
 int HZ ;
 scalar_t__ I_BRKINT (struct tty_struct*) ;
 scalar_t__ I_IGNBRK (struct tty_struct*) ;
 scalar_t__ I_IGNPAR (struct tty_struct*) ;
 scalar_t__ I_INPCK (struct tty_struct*) ;
 scalar_t__ I_PARMRK (struct tty_struct*) ;
 unsigned int PARENB ;
 unsigned int PARODD ;
 short SERPER_PARENB ;
 int UART_IER_MSI ;
 unsigned int UART_LCR_EPAR ;
 unsigned int UART_LCR_PARITY ;
 unsigned int UART_LCR_SPAR ;
 int UART_LSR_BI ;
 int UART_LSR_DR ;
 int UART_LSR_FE ;
 int UART_LSR_OE ;
 int UART_LSR_PE ;
 TYPE_2__ custom ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mb () ;
 int tty_get_baud_rate (struct tty_struct*) ;
 int tty_port_set_check_carrier (struct tty_port*,unsigned int) ;
 int tty_port_set_cts_flow (struct tty_port*,unsigned int) ;

__attribute__((used)) static void change_speed(struct tty_struct *tty, struct serial_state *info,
    struct ktermios *old_termios)
{
 struct tty_port *port = &info->tport;
 int quot = 0, baud_base, baud;
 unsigned cflag, cval = 0;
 int bits;
 unsigned long flags;

 cflag = tty->termios.c_cflag;



 cval = 3; bits = 10;
 if (cflag & CSTOPB) {
  cval |= 0x04;
  bits++;
 }
 if (cflag & PARENB) {
  cval |= UART_LCR_PARITY;
  bits++;
 }
 if (!(cflag & PARODD))
  cval |= UART_LCR_EPAR;






 baud = tty_get_baud_rate(tty);
 if (!baud)
  baud = 9600;
 baud_base = info->baud_base;
 if (baud == 38400 && (port->flags & ASYNC_SPD_MASK) == ASYNC_SPD_CUST)
  quot = info->custom_divisor;
 else {
  if (baud == 134)

   quot = (2*baud_base / 269);
  else if (baud)
   quot = baud_base / baud;
 }

 if (!quot && old_termios) {

  tty->termios.c_cflag &= ~CBAUD;
  tty->termios.c_cflag |= (old_termios->c_cflag & CBAUD);
  baud = tty_get_baud_rate(tty);
  if (!baud)
   baud = 9600;
  if (baud == 38400 &&
      (port->flags & ASYNC_SPD_MASK) == ASYNC_SPD_CUST)
   quot = info->custom_divisor;
  else {
   if (baud == 134)

    quot = (2*baud_base / 269);
   else if (baud)
    quot = baud_base / baud;
  }
 }

 if (!quot)
  quot = baud_base / 9600;
 info->quot = quot;
 info->timeout = ((info->xmit_fifo_size*HZ*bits*quot) / baud_base);
 info->timeout += HZ/50;


 info->IER &= ~UART_IER_MSI;
 if (port->flags & ASYNC_HARDPPS_CD)
  info->IER |= UART_IER_MSI;
 tty_port_set_cts_flow(port, cflag & CRTSCTS);
 if (cflag & CRTSCTS)
  info->IER |= UART_IER_MSI;
 tty_port_set_check_carrier(port, ~cflag & CLOCAL);
 if (~cflag & CLOCAL)
  info->IER |= UART_IER_MSI;
 info->read_status_mask = UART_LSR_OE | UART_LSR_DR;
 if (I_INPCK(tty))
  info->read_status_mask |= UART_LSR_FE | UART_LSR_PE;
 if (I_BRKINT(tty) || I_PARMRK(tty))
  info->read_status_mask |= UART_LSR_BI;




 info->ignore_status_mask = 0;
 if (I_IGNPAR(tty))
  info->ignore_status_mask |= UART_LSR_PE | UART_LSR_FE;
 if (I_IGNBRK(tty)) {
  info->ignore_status_mask |= UART_LSR_BI;




  if (I_IGNPAR(tty))
   info->ignore_status_mask |= UART_LSR_OE;
 }



 if ((cflag & CREAD) == 0)
  info->ignore_status_mask |= UART_LSR_DR;
 local_irq_save(flags);

 {
   short serper;


   serper = quot - 1;



 if(cval & UART_LCR_PARITY)
   serper |= (SERPER_PARENB);

 custom.serper = serper;
 mb();
 }

 local_irq_restore(flags);
}
