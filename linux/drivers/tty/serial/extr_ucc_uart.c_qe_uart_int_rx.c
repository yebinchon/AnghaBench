
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {int overrun; int frame; int parity; int brk; int rx; } ;
struct uart_port {int read_status_mask; scalar_t__ sysrq; TYPE_2__ icount; int dev; TYPE_1__* state; } ;
struct uart_qe_port {struct qe_bd* rx_cur; struct qe_bd* rx_bd_base; struct uart_port port; } ;
struct tty_port {int dummy; } ;
struct qe_bd {int status; int buf; int length; } ;
struct TYPE_3__ {struct tty_port port; } ;


 int BD_SC_BR ;
 int BD_SC_EMPTY ;
 int BD_SC_FR ;
 int BD_SC_ID ;
 int BD_SC_OV ;
 int BD_SC_PR ;
 int BD_SC_WRAP ;
 unsigned int TTY_BREAK ;
 unsigned int TTY_FRAME ;
 unsigned int TTY_NORMAL ;
 unsigned int TTY_OVERRUN ;
 unsigned int TTY_PARITY ;
 int clrsetbits_be16 (int *,int,int) ;
 int dev_dbg (int ,char*) ;
 int in_be16 (int *) ;
 unsigned char* qe2cpu_addr (int ,struct uart_qe_port*) ;
 int tty_buffer_request_room (struct tty_port*,int) ;
 int tty_flip_buffer_push (struct tty_port*) ;
 int tty_insert_flip_char (struct tty_port*,unsigned char,unsigned int) ;
 scalar_t__ uart_handle_sysrq_char (struct uart_port*,unsigned char) ;

__attribute__((used)) static void qe_uart_int_rx(struct uart_qe_port *qe_port)
{
 int i;
 unsigned char ch, *cp;
 struct uart_port *port = &qe_port->port;
 struct tty_port *tport = &port->state->port;
 struct qe_bd *bdp;
 u16 status;
 unsigned int flg;




 bdp = qe_port->rx_cur;
 while (1) {
  status = in_be16(&bdp->status);


  if (status & BD_SC_EMPTY)
   break;


  i = in_be16(&bdp->length);




  if (tty_buffer_request_room(tport, i) < i) {
   dev_dbg(port->dev, "ucc-uart: no room in RX buffer\n");
   return;
  }


  cp = qe2cpu_addr(bdp->buf, qe_port);


  while (i-- > 0) {
   ch = *cp++;
   port->icount.rx++;
   flg = TTY_NORMAL;

   if (!i && status &
       (BD_SC_BR | BD_SC_FR | BD_SC_PR | BD_SC_OV))
    goto handle_error;
   if (uart_handle_sysrq_char(port, ch))
    continue;

error_return:
   tty_insert_flip_char(tport, ch, flg);

  }


  clrsetbits_be16(&bdp->status, BD_SC_BR | BD_SC_FR | BD_SC_PR |
   BD_SC_OV | BD_SC_ID, BD_SC_EMPTY);
  if (in_be16(&bdp->status) & BD_SC_WRAP)
   bdp = qe_port->rx_bd_base;
  else
   bdp++;

 }


 qe_port->rx_cur = bdp;


 tty_flip_buffer_push(tport);

 return;



handle_error:

 if (status & BD_SC_BR)
  port->icount.brk++;
 if (status & BD_SC_PR)
  port->icount.parity++;
 if (status & BD_SC_FR)
  port->icount.frame++;
 if (status & BD_SC_OV)
  port->icount.overrun++;


 status &= port->read_status_mask;


 if (status & BD_SC_BR)
  flg = TTY_BREAK;
 else if (status & BD_SC_PR)
  flg = TTY_PARITY;
 else if (status & BD_SC_FR)
  flg = TTY_FRAME;


 if (status & BD_SC_OV)
  tty_insert_flip_char(tport, 0, TTY_OVERRUN);



 goto error_return;
}
