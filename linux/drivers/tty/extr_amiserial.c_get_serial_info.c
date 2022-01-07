
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int index; struct serial_state* driver_data; } ;
struct serial_struct {int custom_divisor; int closing_wait; int close_delay; int baud_base; int xmit_fifo_size; int flags; int port; int line; } ;
struct TYPE_2__ {int closing_wait; int close_delay; int flags; } ;
struct serial_state {int custom_divisor; TYPE_1__ tport; int baud_base; int xmit_fifo_size; int port; } ;


 int tty_lock (struct tty_struct*) ;
 int tty_unlock (struct tty_struct*) ;

__attribute__((used)) static int get_serial_info(struct tty_struct *tty, struct serial_struct *ss)
{
 struct serial_state *state = tty->driver_data;

 tty_lock(tty);
 ss->line = tty->index;
 ss->port = state->port;
 ss->flags = state->tport.flags;
 ss->xmit_fifo_size = state->xmit_fifo_size;
 ss->baud_base = state->baud_base;
 ss->close_delay = state->tport.close_delay;
 ss->closing_wait = state->tport.closing_wait;
 ss->custom_divisor = state->custom_divisor;
 tty_unlock(tty);
 return 0;
}
