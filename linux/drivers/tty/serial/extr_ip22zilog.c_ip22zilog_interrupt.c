
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct zilog_channel {int control; } ;
struct TYPE_4__ {TYPE_1__* state; int lock; } ;
struct uart_ip22zilog_port {struct uart_ip22zilog_port* next; TYPE_2__ port; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {int port; } ;


 unsigned char CHAEXT ;
 unsigned char CHARxIP ;
 unsigned char CHATxIP ;
 unsigned char CHBEXT ;
 unsigned char CHBRxIP ;
 unsigned char CHBTxIP ;
 int IRQ_HANDLED ;
 int R3 ;
 int RES_H_IUS ;
 struct zilog_channel* ZILOG_CHANNEL_FROM_PORT (TYPE_2__*) ;
 int ZSDELAY () ;
 int ZS_WSYNC (struct zilog_channel*) ;
 int ip22zilog_receive_chars (struct uart_ip22zilog_port*,struct zilog_channel*) ;
 int ip22zilog_status_handle (struct uart_ip22zilog_port*,struct zilog_channel*) ;
 int ip22zilog_transmit_chars (struct uart_ip22zilog_port*,struct zilog_channel*) ;
 unsigned char read_zsreg (struct zilog_channel*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tty_flip_buffer_push (int *) ;
 int writeb (int ,int *) ;

__attribute__((used)) static irqreturn_t ip22zilog_interrupt(int irq, void *dev_id)
{
 struct uart_ip22zilog_port *up = dev_id;

 while (up) {
  struct zilog_channel *channel
   = ZILOG_CHANNEL_FROM_PORT(&up->port);
  unsigned char r3;
  bool push = 0;

  spin_lock(&up->port.lock);
  r3 = read_zsreg(channel, R3);


  if (r3 & (CHAEXT | CHATxIP | CHARxIP)) {
   writeb(RES_H_IUS, &channel->control);
   ZSDELAY();
   ZS_WSYNC(channel);

   if (r3 & CHARxIP)
    push = ip22zilog_receive_chars(up, channel);
   if (r3 & CHAEXT)
    ip22zilog_status_handle(up, channel);
   if (r3 & CHATxIP)
    ip22zilog_transmit_chars(up, channel);
  }
  spin_unlock(&up->port.lock);

  if (push)
   tty_flip_buffer_push(&up->port.state->port);


  up = up->next;
  channel = ZILOG_CHANNEL_FROM_PORT(&up->port);
  push = 0;

  spin_lock(&up->port.lock);
  if (r3 & (CHBEXT | CHBTxIP | CHBRxIP)) {
   writeb(RES_H_IUS, &channel->control);
   ZSDELAY();
   ZS_WSYNC(channel);

   if (r3 & CHBRxIP)
    push = ip22zilog_receive_chars(up, channel);
   if (r3 & CHBEXT)
    ip22zilog_status_handle(up, channel);
   if (r3 & CHBTxIP)
    ip22zilog_transmit_chars(up, channel);
  }
  spin_unlock(&up->port.lock);

  if (push)
   tty_flip_buffer_push(&up->port.state->port);

  up = up->next;
 }

 return IRQ_HANDLED;
}
