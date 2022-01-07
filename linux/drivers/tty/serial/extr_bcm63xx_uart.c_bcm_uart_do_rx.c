
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int frame; int parity; int brk; int rx; int overrun; } ;
struct uart_port {unsigned int read_status_mask; unsigned int ignore_status_mask; int lock; TYPE_2__ icount; TYPE_1__* state; } ;
struct tty_port {int dummy; } ;
struct TYPE_3__ {struct tty_port port; } ;


 char TTY_BREAK ;
 char TTY_FRAME ;
 char TTY_NORMAL ;
 char TTY_OVERRUN ;
 char TTY_PARITY ;
 int UART_CTL_REG ;
 unsigned int UART_CTL_RSTRXFIFO_MASK ;
 unsigned int UART_FIFO_ANYERR_MASK ;
 unsigned int UART_FIFO_BRKDET_MASK ;
 unsigned int UART_FIFO_FRAMEERR_MASK ;
 unsigned int UART_FIFO_PARERR_MASK ;
 int UART_FIFO_REG ;
 int UART_IR_REG ;
 int UART_IR_RXNOTEMPTY ;
 int UART_IR_RXOVER ;
 unsigned int UART_IR_STAT (int ) ;
 unsigned int bcm_uart_readl (struct uart_port*,int ) ;
 int bcm_uart_writel (struct uart_port*,unsigned int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tty_flip_buffer_push (struct tty_port*) ;
 int tty_insert_flip_char (struct tty_port*,unsigned int,char) ;
 scalar_t__ uart_handle_break (struct uart_port*) ;
 scalar_t__ uart_handle_sysrq_char (struct uart_port*,unsigned int) ;
 scalar_t__ unlikely (unsigned int) ;

__attribute__((used)) static void bcm_uart_do_rx(struct uart_port *port)
{
 struct tty_port *tty_port = &port->state->port;
 unsigned int max_count;




 max_count = 32;
 do {
  unsigned int iestat, c, cstat;
  char flag;



  iestat = bcm_uart_readl(port, UART_IR_REG);

  if (unlikely(iestat & UART_IR_STAT(UART_IR_RXOVER))) {
   unsigned int val;



   val = bcm_uart_readl(port, UART_CTL_REG);
   val |= UART_CTL_RSTRXFIFO_MASK;
   bcm_uart_writel(port, val, UART_CTL_REG);

   port->icount.overrun++;
   tty_insert_flip_char(tty_port, 0, TTY_OVERRUN);
  }

  if (!(iestat & UART_IR_STAT(UART_IR_RXNOTEMPTY)))
   break;

  cstat = c = bcm_uart_readl(port, UART_FIFO_REG);
  port->icount.rx++;
  flag = TTY_NORMAL;
  c &= 0xff;

  if (unlikely((cstat & UART_FIFO_ANYERR_MASK))) {

   if (cstat & UART_FIFO_BRKDET_MASK) {
    port->icount.brk++;
    if (uart_handle_break(port))
     continue;
   }

   if (cstat & UART_FIFO_PARERR_MASK)
    port->icount.parity++;
   if (cstat & UART_FIFO_FRAMEERR_MASK)
    port->icount.frame++;


   cstat &= port->read_status_mask;
   if (cstat & UART_FIFO_BRKDET_MASK)
    flag = TTY_BREAK;
   if (cstat & UART_FIFO_FRAMEERR_MASK)
    flag = TTY_FRAME;
   if (cstat & UART_FIFO_PARERR_MASK)
    flag = TTY_PARITY;
  }

  if (uart_handle_sysrq_char(port, c))
   continue;


  if ((cstat & port->ignore_status_mask) == 0)
   tty_insert_flip_char(tty_port, c, flag);

 } while (--max_count);

 spin_unlock(&port->lock);
 tty_flip_buffer_push(tty_port);
 spin_lock(&port->lock);
}
