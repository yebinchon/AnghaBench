
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int frame; int overrun; int parity; int rx; } ;
struct uart_port {int ignore_status_mask; int read_status_mask; TYPE_2__ icount; TYPE_1__* state; } ;
struct tty_port {int dummy; } ;
struct TYPE_3__ {struct tty_port port; } ;


 char TTY_FRAME ;
 char TTY_NORMAL ;
 char TTY_OVERRUN ;
 char TTY_PARITY ;
 int ULITE_RX ;
 int ULITE_STATUS_FRAME ;
 int ULITE_STATUS_OVERRUN ;
 int ULITE_STATUS_PARITY ;
 int ULITE_STATUS_RXVALID ;
 int tty_insert_flip_char (struct tty_port*,unsigned char,char) ;
 unsigned char uart_in32 (int ,struct uart_port*) ;

__attribute__((used)) static int ulite_receive(struct uart_port *port, int stat)
{
 struct tty_port *tport = &port->state->port;
 unsigned char ch = 0;
 char flag = TTY_NORMAL;

 if ((stat & (ULITE_STATUS_RXVALID | ULITE_STATUS_OVERRUN
       | ULITE_STATUS_FRAME)) == 0)
  return 0;


 if (stat & ULITE_STATUS_RXVALID) {
  port->icount.rx++;
  ch = uart_in32(ULITE_RX, port);

  if (stat & ULITE_STATUS_PARITY)
   port->icount.parity++;
 }

 if (stat & ULITE_STATUS_OVERRUN)
  port->icount.overrun++;

 if (stat & ULITE_STATUS_FRAME)
  port->icount.frame++;



 if (stat & port->ignore_status_mask & ULITE_STATUS_PARITY)
  stat &= ~ULITE_STATUS_RXVALID;

 stat &= port->read_status_mask;

 if (stat & ULITE_STATUS_PARITY)
  flag = TTY_PARITY;


 stat &= ~port->ignore_status_mask;

 if (stat & ULITE_STATUS_RXVALID)
  tty_insert_flip_char(tport, ch, flag);

 if (stat & ULITE_STATUS_FRAME)
  tty_insert_flip_char(tport, 0, TTY_FRAME);

 if (stat & ULITE_STATUS_OVERRUN)
  tty_insert_flip_char(tport, 0, TTY_OVERRUN);

 return 1;
}
