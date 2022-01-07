
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int overrun; int frame; int parity; int rx; } ;
struct uart_port {int read_status_mask; int ignore_status_mask; TYPE_2__* state; int lock; TYPE_1__ icount; scalar_t__ membase; } ;
struct TYPE_4__ {int port; } ;


 unsigned int TTY_FRAME ;
 unsigned int TTY_NORMAL ;
 unsigned int TTY_OVERRUN ;
 unsigned int TTY_PARITY ;
 scalar_t__ UA_EMI_REC ;
 scalar_t__ UA_STATUS ;
 int UA_STATUS_FRAME_ERR ;
 int UA_STATUS_OVERRUN_ERR ;
 int UA_STATUS_PARITY_ERR ;
 scalar_t__ digicolor_uart_rx_empty (struct uart_port*) ;
 int readb_relaxed (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_flip_buffer_push (int *) ;
 int uart_insert_char (struct uart_port*,int,int,int,unsigned int) ;

__attribute__((used)) static void digicolor_uart_rx(struct uart_port *port)
{
 unsigned long flags;

 spin_lock_irqsave(&port->lock, flags);

 while (1) {
  u8 status, ch;
  unsigned int ch_flag;

  if (digicolor_uart_rx_empty(port))
   break;

  ch = readb_relaxed(port->membase + UA_EMI_REC);
  status = readb_relaxed(port->membase + UA_STATUS);

  port->icount.rx++;
  ch_flag = TTY_NORMAL;

  if (status) {
   if (status & UA_STATUS_PARITY_ERR)
    port->icount.parity++;
   else if (status & UA_STATUS_FRAME_ERR)
    port->icount.frame++;
   else if (status & UA_STATUS_OVERRUN_ERR)
    port->icount.overrun++;

   status &= port->read_status_mask;

   if (status & UA_STATUS_PARITY_ERR)
    ch_flag = TTY_PARITY;
   else if (status & UA_STATUS_FRAME_ERR)
    ch_flag = TTY_FRAME;
   else if (status & UA_STATUS_OVERRUN_ERR)
    ch_flag = TTY_OVERRUN;
  }

  if (status & port->ignore_status_mask)
   continue;

  uart_insert_char(port, status, UA_STATUS_OVERRUN_ERR, ch,
     ch_flag);
 }

 spin_unlock_irqrestore(&port->lock, flags);

 tty_flip_buffer_push(&port->state->port);
}
