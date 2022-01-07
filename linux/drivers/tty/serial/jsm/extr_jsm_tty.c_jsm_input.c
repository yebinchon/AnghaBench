
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct tty_struct {int dummy; } ;
struct tty_port {struct tty_struct* tty; } ;
struct TYPE_4__ {TYPE_1__* state; } ;
struct jsm_channel {int ch_r_head; int ch_r_tail; int ch_flags; int* ch_equeue; int ch_e_tail; struct jsm_board* ch_bd; int ch_lock; int * ch_rqueue; int ch_portnum; TYPE_2__ uart_port; } ;
struct jsm_board {int pci_dev; } ;
struct TYPE_3__ {struct tty_port port; } ;


 int CH_STOPI ;
 int C_CREAD (struct tty_struct*) ;
 int IOCTL ;
 scalar_t__ I_BRKINT (struct tty_struct*) ;
 scalar_t__ I_INPCK (struct tty_struct*) ;
 scalar_t__ I_PARMRK (struct tty_struct*) ;
 int READ ;
 int RQUEUEMASK ;
 int RQUEUESIZE ;
 int TTY_BREAK ;
 int TTY_FRAME ;
 int TTY_NORMAL ;
 int TTY_PARITY ;
 int UART_LSR_BI ;
 int UART_LSR_FE ;
 int UART_LSR_PE ;
 int jsm_check_queue_flow_control (struct jsm_channel*) ;
 int jsm_dbg (int ,int *,char*,...) ;
 int min (int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_buffer_request_room (struct tty_port*,int) ;
 int tty_flip_buffer_push (struct tty_port*) ;
 int tty_insert_flip_char (struct tty_port*,int ,int ) ;
 int tty_insert_flip_string (struct tty_port*,int *,int) ;

void jsm_input(struct jsm_channel *ch)
{
 struct jsm_board *bd;
 struct tty_struct *tp;
 struct tty_port *port;
 u32 rmask;
 u16 head;
 u16 tail;
 int data_len;
 unsigned long lock_flags;
 int len = 0;
 int s = 0;
 int i = 0;

 jsm_dbg(READ, &ch->ch_bd->pci_dev, "start\n");

 port = &ch->uart_port.state->port;
 tp = port->tty;

 bd = ch->ch_bd;
 if (!bd)
  return;

 spin_lock_irqsave(&ch->ch_lock, lock_flags);






 rmask = RQUEUEMASK;

 head = ch->ch_r_head & rmask;
 tail = ch->ch_r_tail & rmask;

 data_len = (head - tail) & rmask;
 if (data_len == 0) {
  spin_unlock_irqrestore(&ch->ch_lock, lock_flags);
  return;
 }

 jsm_dbg(READ, &ch->ch_bd->pci_dev, "start\n");





 if (!tp || !C_CREAD(tp)) {

  jsm_dbg(READ, &ch->ch_bd->pci_dev,
   "input. dropping %d bytes on port %d...\n",
   data_len, ch->ch_portnum);
  ch->ch_r_head = tail;


  jsm_check_queue_flow_control(ch);

  spin_unlock_irqrestore(&ch->ch_lock, lock_flags);
  return;
 }




 if (ch->ch_flags & CH_STOPI) {
  spin_unlock_irqrestore(&ch->ch_lock, lock_flags);
  jsm_dbg(READ, &ch->ch_bd->pci_dev,
   "Port %d throttled, not reading any data. head: %x tail: %x\n",
   ch->ch_portnum, head, tail);
  return;
 }

 jsm_dbg(READ, &ch->ch_bd->pci_dev, "start 2\n");

 len = tty_buffer_request_room(port, data_len);






 while (len) {
  s = ((head >= tail) ? head : RQUEUESIZE) - tail;
  s = min(s, len);

  if (s <= 0)
   break;
  if (I_PARMRK(tp) || I_BRKINT(tp) || I_INPCK(tp)) {
   for (i = 0; i < s; i++) {




    if (*(ch->ch_equeue +tail +i) & UART_LSR_BI)
     tty_insert_flip_char(port, *(ch->ch_rqueue +tail +i), TTY_BREAK);
    else if (*(ch->ch_equeue +tail +i) & UART_LSR_PE)
     tty_insert_flip_char(port, *(ch->ch_rqueue +tail +i), TTY_PARITY);
    else if (*(ch->ch_equeue +tail +i) & UART_LSR_FE)
     tty_insert_flip_char(port, *(ch->ch_rqueue +tail +i), TTY_FRAME);
    else
     tty_insert_flip_char(port, *(ch->ch_rqueue +tail +i), TTY_NORMAL);
   }
  } else {
   tty_insert_flip_string(port, ch->ch_rqueue + tail, s);
  }
  tail += s;
  len -= s;

  tail &= rmask;
 }

 ch->ch_r_tail = tail & rmask;
 ch->ch_e_tail = tail & rmask;
 jsm_check_queue_flow_control(ch);
 spin_unlock_irqrestore(&ch->ch_lock, lock_flags);


 tty_flip_buffer_push(port);

 jsm_dbg(IOCTL, &ch->ch_bd->pci_dev, "finish\n");
}
