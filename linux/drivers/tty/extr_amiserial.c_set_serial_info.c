
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dev; struct serial_state* driver_data; } ;
struct tty_port {int flags; int close_delay; int closing_wait; int low_latency; } ;
struct serial_struct {int flags; scalar_t__ custom_divisor; scalar_t__ port; scalar_t__ xmit_fifo_size; int baud_base; int close_delay; int closing_wait; scalar_t__ irq; } ;
struct serial_state {scalar_t__ custom_divisor; scalar_t__ port; scalar_t__ xmit_fifo_size; int baud_base; struct tty_port tport; } ;


 int ASYNC_FLAGS ;
 int ASYNC_LOW_LATENCY ;
 int ASYNC_SPD_MASK ;
 int ASYNC_USR_MASK ;
 int EINVAL ;
 int EPERM ;
 int HZ ;
 int change_speed (struct tty_struct*,struct serial_state*,int *) ;
 int dev_warn_ratelimited (int ,char*) ;
 int serial_isroot () ;
 int startup (struct tty_struct*,struct serial_state*) ;
 int tty_lock (struct tty_struct*) ;
 scalar_t__ tty_port_initialized (struct tty_port*) ;
 int tty_unlock (struct tty_struct*) ;

__attribute__((used)) static int set_serial_info(struct tty_struct *tty, struct serial_struct *ss)
{
 struct serial_state *state = tty->driver_data;
 struct tty_port *port = &state->tport;
 bool change_spd;
 int retval = 0;

 tty_lock(tty);
 change_spd = ((ss->flags ^ port->flags) & ASYNC_SPD_MASK) ||
  ss->custom_divisor != state->custom_divisor;
 if (ss->irq || ss->port != state->port ||
   ss->xmit_fifo_size != state->xmit_fifo_size) {
  tty_unlock(tty);
  return -EINVAL;
 }

 if (!serial_isroot()) {
  if ((ss->baud_base != state->baud_base) ||
      (ss->close_delay != port->close_delay) ||
      (ss->xmit_fifo_size != state->xmit_fifo_size) ||
      ((ss->flags & ~ASYNC_USR_MASK) !=
       (port->flags & ~ASYNC_USR_MASK))) {
   tty_unlock(tty);
   return -EPERM;
  }
  port->flags = ((port->flags & ~ASYNC_USR_MASK) |
          (ss->flags & ASYNC_USR_MASK));
  state->custom_divisor = ss->custom_divisor;
  goto check_and_exit;
 }

 if (ss->baud_base < 9600) {
  tty_unlock(tty);
  return -EINVAL;
 }






 state->baud_base = ss->baud_base;
 port->flags = ((port->flags & ~ASYNC_FLAGS) |
   (ss->flags & ASYNC_FLAGS));
 state->custom_divisor = ss->custom_divisor;
 port->close_delay = ss->close_delay * HZ/100;
 port->closing_wait = ss->closing_wait * HZ/100;
 port->low_latency = (port->flags & ASYNC_LOW_LATENCY) ? 1 : 0;

check_and_exit:
 if (tty_port_initialized(port)) {
  if (change_spd) {

   if (ss->flags & ASYNC_SPD_MASK)
    dev_warn_ratelimited(tty->dev, "use of SPD flags is deprecated\n");
   change_speed(tty, state, ((void*)0));
  }
 } else
  retval = startup(tty, state);
 tty_unlock(tty);
 return retval;
}
