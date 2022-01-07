
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {unsigned char* buf; } ;
struct uart_state {TYPE_4__ xmit; } ;
struct uart_port {scalar_t__ type; TYPE_3__* cons; TYPE_1__* ops; } ;
struct TYPE_6__ {scalar_t__ c_cflag; } ;
struct tty_struct {TYPE_2__ termios; } ;
struct TYPE_7__ {scalar_t__ cflag; } ;
struct TYPE_5__ {int (* startup ) (struct uart_port*) ;} ;


 int CAP_SYS_ADMIN ;
 scalar_t__ C_BAUD (struct tty_struct*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ PORT_UNKNOWN ;
 int UART_PM_STATE_ON ;
 scalar_t__ capable (int ) ;
 int free_page (unsigned long) ;
 unsigned long get_zeroed_page (int ) ;
 int stub1 (struct uart_port*) ;
 int uart_change_pm (struct uart_state*,int ) ;
 int uart_change_speed (struct tty_struct*,struct uart_state*,int *) ;
 int uart_circ_clear (TYPE_4__*) ;
 scalar_t__ uart_console (struct uart_port*) ;
 struct uart_port* uart_port_check (struct uart_state*) ;
 int uart_port_dtr_rts (struct uart_port*,int) ;
 int uart_port_lock (struct uart_state*,unsigned long) ;
 int uart_port_unlock (struct uart_port*,unsigned long) ;

__attribute__((used)) static int uart_port_startup(struct tty_struct *tty, struct uart_state *state,
  int init_hw)
{
 struct uart_port *uport = uart_port_check(state);
 unsigned long page;
 unsigned long flags = 0;
 int retval = 0;

 if (uport->type == PORT_UNKNOWN)
  return 1;




 uart_change_pm(state, UART_PM_STATE_ON);





 page = get_zeroed_page(GFP_KERNEL);
 if (!page)
  return -ENOMEM;

 uart_port_lock(state, flags);
 if (!state->xmit.buf) {
  state->xmit.buf = (unsigned char *) page;
  uart_circ_clear(&state->xmit);
  uart_port_unlock(uport, flags);
 } else {
  uart_port_unlock(uport, flags);




  free_page(page);
 }

 retval = uport->ops->startup(uport);
 if (retval == 0) {
  if (uart_console(uport) && uport->cons->cflag) {
   tty->termios.c_cflag = uport->cons->cflag;
   uport->cons->cflag = 0;
  }



  uart_change_speed(tty, state, ((void*)0));





  if (init_hw && C_BAUD(tty))
   uart_port_dtr_rts(uport, 1);
 }






 if (retval && capable(CAP_SYS_ADMIN))
  return 1;

 return retval;
}
