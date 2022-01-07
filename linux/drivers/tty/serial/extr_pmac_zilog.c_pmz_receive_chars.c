
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int overrun; int frame; int parity; int brk; int rx; } ;
struct TYPE_7__ {unsigned char read_status_mask; int ignore_status_mask; TYPE_2__ icount; int lock; scalar_t__ sysrq; TYPE_1__* state; } ;
struct uart_pmac_port {unsigned char parity_mask; int flags; TYPE_3__ port; } ;
struct tty_port {int dummy; } ;
struct TYPE_5__ {struct tty_port port; } ;


 unsigned char BRK_ABRT ;
 unsigned char CRC_ERR ;
 int ERR_RES ;
 int HZ ;
 unsigned char PAR_ERR ;
 int PMACZILOG_FLAG_BREAK ;
 int R0 ;
 int R1 ;
 unsigned char Rx_CH_AV ;
 unsigned char Rx_OVR ;
 unsigned char TTY_BREAK ;
 unsigned char TTY_FRAME ;
 unsigned char TTY_NORMAL ;
 unsigned char TTY_OVERRUN ;
 unsigned char TTY_PARITY ;
 int WARN_ON (int) ;
 scalar_t__ jiffies ;
 int pmz_debug (char*) ;
 int pmz_error (char*) ;
 int pmz_interrupt_control (struct uart_pmac_port*,int ) ;
 unsigned char read_zsdata (struct uart_pmac_port*) ;
 unsigned char read_zsreg (struct uart_pmac_port*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tty_insert_flip_char (struct tty_port*,unsigned char,unsigned char) ;
 scalar_t__ uart_handle_break (TYPE_3__*) ;
 int uart_handle_sysrq_char (TYPE_3__*,unsigned char) ;
 int write_zsreg (struct uart_pmac_port*,int ,int ) ;
 int zssync (struct uart_pmac_port*) ;

__attribute__((used)) static bool pmz_receive_chars(struct uart_pmac_port *uap)
{
 struct tty_port *port;
 unsigned char ch, r1, drop, flag;
 int loops = 0;


 if (uap->port.state == ((void*)0)) {
  WARN_ON(1);
  (void)read_zsdata(uap);
  return 0;
 }
 port = &uap->port.state->port;

 while (1) {
  drop = 0;

  r1 = read_zsreg(uap, R1);
  ch = read_zsdata(uap);

  if (r1 & (PAR_ERR | Rx_OVR | CRC_ERR)) {
   write_zsreg(uap, R0, ERR_RES);
   zssync(uap);
  }

  ch &= uap->parity_mask;
  if (ch == 0 && uap->flags & PMACZILOG_FLAG_BREAK) {
   uap->flags &= ~PMACZILOG_FLAG_BREAK;
  }
  if (drop)
   goto next_char;

  flag = TTY_NORMAL;
  uap->port.icount.rx++;

  if (r1 & (PAR_ERR | Rx_OVR | CRC_ERR | BRK_ABRT)) {
   if (r1 & BRK_ABRT) {
    pmz_debug("pmz: got break !\n");
    r1 &= ~(PAR_ERR | CRC_ERR);
    uap->port.icount.brk++;
    if (uart_handle_break(&uap->port))
     goto next_char;
   }
   else if (r1 & PAR_ERR)
    uap->port.icount.parity++;
   else if (r1 & CRC_ERR)
    uap->port.icount.frame++;
   if (r1 & Rx_OVR)
    uap->port.icount.overrun++;
   r1 &= uap->port.read_status_mask;
   if (r1 & BRK_ABRT)
    flag = TTY_BREAK;
   else if (r1 & PAR_ERR)
    flag = TTY_PARITY;
   else if (r1 & CRC_ERR)
    flag = TTY_FRAME;
  }

  if (uap->port.ignore_status_mask == 0xff ||
      (r1 & uap->port.ignore_status_mask) == 0) {
   tty_insert_flip_char(port, ch, flag);
  }
  if (r1 & Rx_OVR)
   tty_insert_flip_char(port, 0, TTY_OVERRUN);
 next_char:







  if ((++loops) > 1000)
   goto flood;
  ch = read_zsreg(uap, R0);
  if (!(ch & Rx_CH_AV))
   break;
 }

 return 1;
 flood:
 pmz_interrupt_control(uap, 0);
 pmz_error("pmz: rx irq flood !\n");
 return 1;
}
