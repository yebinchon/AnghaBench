
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int frame; int parity; int rx; int overrun; } ;
struct uart_port {int read_status_mask; int ignore_status_mask; int lock; TYPE_2__ icount; TYPE_1__* state; } ;
struct tty_port {int dummy; } ;
struct pic32_sport {int dummy; } ;
struct TYPE_3__ {struct tty_port port; } ;


 int PIC32_CLR (int ) ;
 int PIC32_UART_RX ;
 unsigned int PIC32_UART_RX_FIFO_DEPTH ;
 int PIC32_UART_STA ;
 int PIC32_UART_STA_FERR ;
 int PIC32_UART_STA_OERR ;
 int PIC32_UART_STA_PERR ;
 int PIC32_UART_STA_URXDA ;
 char TTY_FRAME ;
 char TTY_NORMAL ;
 char TTY_OVERRUN ;
 char TTY_PARITY ;
 int pic32_uart_readl (struct pic32_sport*,int ) ;
 int pic32_uart_writel (struct pic32_sport*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct pic32_sport* to_pic32_sport (struct uart_port*) ;
 int tty_flip_buffer_push (struct tty_port*) ;
 int tty_insert_flip_char (struct tty_port*,int,char) ;
 scalar_t__ uart_handle_sysrq_char (struct uart_port*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void pic32_uart_do_rx(struct uart_port *port)
{
 struct pic32_sport *sport = to_pic32_sport(port);
 struct tty_port *tty;
 unsigned int max_count;





 max_count = PIC32_UART_RX_FIFO_DEPTH;

 spin_lock(&port->lock);

 tty = &port->state->port;

 do {
  u32 sta_reg, c;
  char flag;


  sta_reg = pic32_uart_readl(sport, PIC32_UART_STA);
  if (unlikely(sta_reg & PIC32_UART_STA_OERR)) {


   pic32_uart_writel(sport, PIC32_CLR(PIC32_UART_STA),
      PIC32_UART_STA_OERR);

   port->icount.overrun++;
   tty_insert_flip_char(tty, 0, TTY_OVERRUN);
  }


  if (!(sta_reg & PIC32_UART_STA_URXDA))
   break;


  c = pic32_uart_readl(sport, PIC32_UART_RX);

  port->icount.rx++;
  flag = TTY_NORMAL;
  c &= 0xff;

  if (unlikely((sta_reg & PIC32_UART_STA_PERR) ||
        (sta_reg & PIC32_UART_STA_FERR))) {


   if (sta_reg & PIC32_UART_STA_PERR)
    port->icount.parity++;
   if (sta_reg & PIC32_UART_STA_FERR)
    port->icount.frame++;


   sta_reg &= port->read_status_mask;

   if (sta_reg & PIC32_UART_STA_FERR)
    flag = TTY_FRAME;
   if (sta_reg & PIC32_UART_STA_PERR)
    flag = TTY_PARITY;
  }

  if (uart_handle_sysrq_char(port, c))
   continue;

  if ((sta_reg & port->ignore_status_mask) == 0)
   tty_insert_flip_char(tty, c, flag);

 } while (--max_count);

 spin_unlock(&port->lock);

 tty_flip_buffer_push(tty);
}
