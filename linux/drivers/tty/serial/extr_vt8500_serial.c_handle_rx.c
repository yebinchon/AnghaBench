
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int rx; int parity; int frame; int overrun; } ;
struct uart_port {unsigned int read_status_mask; int lock; TYPE_2__ icount; scalar_t__ membase; TYPE_1__* state; } ;
struct tty_port {int dummy; } ;
struct TYPE_3__ {struct tty_port port; } ;


 unsigned int FER ;
 unsigned int PER ;
 int RXOVER ;
 char TTY_FRAME ;
 char TTY_NORMAL ;
 char TTY_OVERRUN ;
 char TTY_PARITY ;
 scalar_t__ VT8500_RXFIFO ;
 int VT8500_URFIDX ;
 int VT8500_URISR ;
 int readw (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tty_flip_buffer_push (struct tty_port*) ;
 int tty_insert_flip_char (struct tty_port*,unsigned int,char) ;
 int uart_handle_sysrq_char (struct uart_port*,unsigned int) ;
 int vt8500_read (struct uart_port*,int ) ;

__attribute__((used)) static void handle_rx(struct uart_port *port)
{
 struct tty_port *tport = &port->state->port;




 if ((vt8500_read(port, VT8500_URISR) & RXOVER)) {
  port->icount.overrun++;
  tty_insert_flip_char(tport, 0, TTY_OVERRUN);
 }


 while (vt8500_read(port, VT8500_URFIDX) & 0x1f00) {
  unsigned int c;
  char flag = TTY_NORMAL;

  c = readw(port->membase + VT8500_RXFIFO) & 0x3ff;


  c &= ~port->read_status_mask;

  if (c & FER) {
   port->icount.frame++;
   flag = TTY_FRAME;
  } else if (c & PER) {
   port->icount.parity++;
   flag = TTY_PARITY;
  }
  port->icount.rx++;

  if (!uart_handle_sysrq_char(port, c))
   tty_insert_flip_char(tport, c, flag);
 }

 spin_unlock(&port->lock);
 tty_flip_buffer_push(tport);
 spin_lock(&port->lock);
}
