
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int rx; int frame; int brk; int overrun; } ;
struct uart_port {unsigned int read_status_mask; int lock; TYPE_2__ icount; TYPE_1__* state; } ;
struct tty_port {int dummy; } ;
struct TYPE_3__ {struct tty_port port; } ;


 char TTY_BREAK ;
 char TTY_FRAME ;
 char TTY_NORMAL ;
 char TTY_OVERRUN ;
 int UART_CR ;
 int UART_CR_CMD_RESET_ERR ;
 int UART_RF ;
 int UART_SR ;
 int UART_SR_OVERRUN ;
 unsigned int UART_SR_PAR_FRAME_ERR ;
 unsigned int UART_SR_RX_BREAK ;
 unsigned int UART_SR_RX_READY ;
 int msm_read (struct uart_port*,int ) ;
 int msm_write (struct uart_port*,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tty_flip_buffer_push (struct tty_port*) ;
 int tty_insert_flip_char (struct tty_port*,unsigned int,char) ;
 scalar_t__ uart_handle_break (struct uart_port*) ;
 int uart_handle_sysrq_char (struct uart_port*,unsigned int) ;

__attribute__((used)) static void msm_handle_rx(struct uart_port *port)
{
 struct tty_port *tport = &port->state->port;
 unsigned int sr;





 if ((msm_read(port, UART_SR) & UART_SR_OVERRUN)) {
  port->icount.overrun++;
  tty_insert_flip_char(tport, 0, TTY_OVERRUN);
  msm_write(port, UART_CR_CMD_RESET_ERR, UART_CR);
 }


 while ((sr = msm_read(port, UART_SR)) & UART_SR_RX_READY) {
  unsigned int c;
  char flag = TTY_NORMAL;
  int sysrq;

  c = msm_read(port, UART_RF);

  if (sr & UART_SR_RX_BREAK) {
   port->icount.brk++;
   if (uart_handle_break(port))
    continue;
  } else if (sr & UART_SR_PAR_FRAME_ERR) {
   port->icount.frame++;
  } else {
   port->icount.rx++;
  }


  sr &= port->read_status_mask;

  if (sr & UART_SR_RX_BREAK)
   flag = TTY_BREAK;
  else if (sr & UART_SR_PAR_FRAME_ERR)
   flag = TTY_FRAME;

  spin_unlock(&port->lock);
  sysrq = uart_handle_sysrq_char(port, c);
  spin_lock(&port->lock);
  if (!sysrq)
   tty_insert_flip_char(tport, c, flag);
 }

 spin_unlock(&port->lock);
 tty_flip_buffer_push(tport);
 spin_lock(&port->lock);
}
