
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int rx; int frame; int brk; int overrun; } ;
struct uart_port {int read_status_mask; int ignore_status_mask; int lock; TYPE_2__* state; TYPE_1__ icount; } ;
struct TYPE_4__ {int port; } ;


 int OWL_UART_CTL ;
 int OWL_UART_CTL_TRFS_TX ;
 int OWL_UART_RXDAT ;
 int OWL_UART_STAT ;
 int OWL_UART_STAT_RFEM ;
 int OWL_UART_STAT_RXER ;
 int OWL_UART_STAT_RXST ;
 char TTY_NORMAL ;
 char TTY_PARITY ;
 int owl_uart_read (struct uart_port*,int ) ;
 int owl_uart_write (struct uart_port*,int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tty_flip_buffer_push (int *) ;
 int tty_insert_flip_char (int *,int,char) ;

__attribute__((used)) static void owl_uart_receive_chars(struct uart_port *port)
{
 u32 stat, val;

 val = owl_uart_read(port, OWL_UART_CTL);
 val &= ~OWL_UART_CTL_TRFS_TX;
 owl_uart_write(port, val, OWL_UART_CTL);

 stat = owl_uart_read(port, OWL_UART_STAT);
 while (!(stat & OWL_UART_STAT_RFEM)) {
  char flag = TTY_NORMAL;

  if (stat & OWL_UART_STAT_RXER)
   port->icount.overrun++;

  if (stat & OWL_UART_STAT_RXST) {

   port->icount.brk++;
   port->icount.frame++;

   stat &= port->read_status_mask;
   if (stat & OWL_UART_STAT_RXST)
    flag = TTY_PARITY;
  } else
   port->icount.rx++;

  val = owl_uart_read(port, OWL_UART_RXDAT);
  val &= 0xff;

  if ((stat & port->ignore_status_mask) == 0)
   tty_insert_flip_char(&port->state->port, val, flag);

  stat = owl_uart_read(port, OWL_UART_STAT);
 }

 spin_unlock(&port->lock);
 tty_flip_buffer_push(&port->state->port);
 spin_lock(&port->lock);
}
