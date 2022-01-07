
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rx; } ;
struct uart_port {TYPE_2__* state; TYPE_1__ icount; } ;
struct TYPE_4__ {int port; } ;


 long CON_BREAK ;
 long CON_HUP ;
 long HV_EWOULDBLOCK ;
 int TTY_NORMAL ;
 int hung_up ;
 long sun4v_con_getchar (long*) ;
 int tty_insert_flip_char (int *,long,int ) ;
 scalar_t__ uart_handle_break (struct uart_port*) ;
 int uart_handle_dcd_change (struct uart_port*,int) ;
 scalar_t__ uart_handle_sysrq_char (struct uart_port*,long) ;

__attribute__((used)) static int receive_chars_getchar(struct uart_port *port)
{
 int saw_console_brk = 0;
 int limit = 10000;

 while (limit-- > 0) {
  long status;
  long c = sun4v_con_getchar(&status);

  if (status == HV_EWOULDBLOCK)
   break;

  if (c == CON_BREAK) {
   if (uart_handle_break(port))
    continue;
   saw_console_brk = 1;
   c = 0;
  }

  if (c == CON_HUP) {
   hung_up = 1;
   uart_handle_dcd_change(port, 0);
  } else if (hung_up) {
   hung_up = 0;
   uart_handle_dcd_change(port, 1);
  }

  if (port->state == ((void*)0)) {
   uart_handle_sysrq_char(port, c);
   continue;
  }

  port->icount.rx++;

  if (uart_handle_sysrq_char(port, c))
   continue;

  tty_insert_flip_char(&port->state->port, c, TTY_NORMAL);
 }

 return saw_console_brk;
}
