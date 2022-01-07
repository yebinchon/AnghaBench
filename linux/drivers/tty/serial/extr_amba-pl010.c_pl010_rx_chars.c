
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int overrun; int frame; int parity; int brk; int rx; } ;
struct TYPE_8__ {unsigned int read_status_mask; int lock; TYPE_2__* state; scalar_t__ membase; TYPE_1__ icount; } ;
struct uart_amba_port {TYPE_3__ port; } ;
struct TYPE_7__ {int port; } ;


 unsigned int TTY_BREAK ;
 unsigned int TTY_FRAME ;
 unsigned int TTY_NORMAL ;
 unsigned int TTY_PARITY ;
 scalar_t__ UART01x_DR ;
 scalar_t__ UART01x_ECR ;
 scalar_t__ UART01x_FR ;
 scalar_t__ UART01x_RSR ;
 unsigned int UART01x_RSR_ANY ;
 unsigned int UART01x_RSR_BE ;
 unsigned int UART01x_RSR_FE ;
 unsigned int UART01x_RSR_OE ;
 unsigned int UART01x_RSR_PE ;
 unsigned int UART_DUMMY_RSR_RX ;
 scalar_t__ UART_RX_DATA (unsigned int) ;
 unsigned int readb (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tty_flip_buffer_push (int *) ;
 scalar_t__ uart_handle_break (TYPE_3__*) ;
 scalar_t__ uart_handle_sysrq_char (TYPE_3__*,unsigned int) ;
 int uart_insert_char (TYPE_3__*,unsigned int,unsigned int,unsigned int,unsigned int) ;
 scalar_t__ unlikely (unsigned int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void pl010_rx_chars(struct uart_amba_port *uap)
{
 unsigned int status, ch, flag, rsr, max_count = 256;

 status = readb(uap->port.membase + UART01x_FR);
 while (UART_RX_DATA(status) && max_count--) {
  ch = readb(uap->port.membase + UART01x_DR);
  flag = TTY_NORMAL;

  uap->port.icount.rx++;





  rsr = readb(uap->port.membase + UART01x_RSR) | UART_DUMMY_RSR_RX;
  if (unlikely(rsr & UART01x_RSR_ANY)) {
   writel(0, uap->port.membase + UART01x_ECR);

   if (rsr & UART01x_RSR_BE) {
    rsr &= ~(UART01x_RSR_FE | UART01x_RSR_PE);
    uap->port.icount.brk++;
    if (uart_handle_break(&uap->port))
     goto ignore_char;
   } else if (rsr & UART01x_RSR_PE)
    uap->port.icount.parity++;
   else if (rsr & UART01x_RSR_FE)
    uap->port.icount.frame++;
   if (rsr & UART01x_RSR_OE)
    uap->port.icount.overrun++;

   rsr &= uap->port.read_status_mask;

   if (rsr & UART01x_RSR_BE)
    flag = TTY_BREAK;
   else if (rsr & UART01x_RSR_PE)
    flag = TTY_PARITY;
   else if (rsr & UART01x_RSR_FE)
    flag = TTY_FRAME;
  }

  if (uart_handle_sysrq_char(&uap->port, ch))
   goto ignore_char;

  uart_insert_char(&uap->port, rsr, UART01x_RSR_OE, ch, flag);

 ignore_char:
  status = readb(uap->port.membase + UART01x_FR);
 }
 spin_unlock(&uap->port.lock);
 tty_flip_buffer_push(&uap->port.state->port);
 spin_lock(&uap->port.lock);
}
