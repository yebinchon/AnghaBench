
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {char* buf; } ;
struct tty_port {int dummy; } ;
struct uart_state {TYPE_3__ xmit; struct tty_port port; } ;
struct uart_port {TYPE_1__* cons; } ;
struct TYPE_5__ {int c_cflag; } ;
struct tty_struct {TYPE_2__ termios; int flags; } ;
struct TYPE_4__ {int cflag; } ;


 scalar_t__ C_HUPCL (struct tty_struct*) ;
 int TTY_IO_ERROR ;
 int free_page (unsigned long) ;
 int set_bit (int ,int *) ;
 scalar_t__ tty_port_initialized (struct tty_port*) ;
 int tty_port_set_initialized (struct tty_port*,int ) ;
 int tty_port_set_suspended (struct tty_port*,int ) ;
 scalar_t__ uart_console (struct uart_port*) ;
 struct uart_port* uart_port_check (struct uart_state*) ;
 int uart_port_dtr_rts (struct uart_port*,int ) ;
 int uart_port_lock (struct uart_state*,unsigned long) ;
 int uart_port_shutdown (struct tty_port*) ;
 int uart_port_unlock (struct uart_port*,unsigned long) ;

__attribute__((used)) static void uart_shutdown(struct tty_struct *tty, struct uart_state *state)
{
 struct uart_port *uport = uart_port_check(state);
 struct tty_port *port = &state->port;
 unsigned long flags = 0;
 char *xmit_buf = ((void*)0);




 if (tty)
  set_bit(TTY_IO_ERROR, &tty->flags);

 if (tty_port_initialized(port)) {
  tty_port_set_initialized(port, 0);




  if (uport && uart_console(uport) && tty)
   uport->cons->cflag = tty->termios.c_cflag;

  if (!tty || C_HUPCL(tty))
   uart_port_dtr_rts(uport, 0);

  uart_port_shutdown(port);
 }






 tty_port_set_suspended(port, 0);







 uart_port_lock(state, flags);
 xmit_buf = state->xmit.buf;
 state->xmit.buf = ((void*)0);
 uart_port_unlock(uport, flags);

 if (xmit_buf)
  free_page((unsigned long)xmit_buf);
}
