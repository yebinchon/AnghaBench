
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int name; struct serial_state* driver_data; } ;
struct tty_port {int * tty; } ;
struct serial_state {int timeout; int read_status_mask; struct tty_port tport; } ;
struct file {int dummy; } ;
struct TYPE_2__ {void* intreq; void* intena; } ;


 void* IF_RBF ;
 int UART_LSR_DR ;
 TYPE_1__ custom ;
 int mb () ;
 int rs_flush_buffer (struct tty_struct*) ;
 int rs_wait_until_sent (struct tty_struct*,int ) ;
 scalar_t__ serial_paranoia_check (struct serial_state*,int ,char*) ;
 int shutdown (struct tty_struct*,struct serial_state*) ;
 int tty_ldisc_flush (struct tty_struct*) ;
 int tty_port_close_end (struct tty_port*,struct tty_struct*) ;
 scalar_t__ tty_port_close_start (struct tty_port*,struct tty_struct*,struct file*) ;
 scalar_t__ tty_port_initialized (struct tty_port*) ;

__attribute__((used)) static void rs_close(struct tty_struct *tty, struct file * filp)
{
 struct serial_state *state = tty->driver_data;
 struct tty_port *port = &state->tport;

 if (serial_paranoia_check(state, tty->name, "rs_close"))
  return;

 if (tty_port_close_start(port, tty, filp) == 0)
  return;







 state->read_status_mask &= ~UART_LSR_DR;
 if (tty_port_initialized(port)) {

         custom.intena = IF_RBF;
  mb();

  custom.intreq = IF_RBF;
  mb();






  rs_wait_until_sent(tty, state->timeout);
 }
 shutdown(tty, state);
 rs_flush_buffer(tty);

 tty_ldisc_flush(tty);
 port->tty = ((void*)0);

 tty_port_close_end(port, tty);
}
