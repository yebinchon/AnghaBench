
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cts; } ;
struct uart_port {int hw_stopped; TYPE_2__* ops; TYPE_1__ icount; int lock; } ;
struct TYPE_4__ {int (* stop_tx ) (struct uart_port*) ;int (* start_tx ) (struct uart_port*) ;} ;


 int lockdep_assert_held_once (int *) ;
 int stub1 (struct uart_port*) ;
 int stub2 (struct uart_port*) ;
 scalar_t__ uart_softcts_mode (struct uart_port*) ;
 int uart_write_wakeup (struct uart_port*) ;

void uart_handle_cts_change(struct uart_port *uport, unsigned int status)
{
 lockdep_assert_held_once(&uport->lock);

 uport->icount.cts++;

 if (uart_softcts_mode(uport)) {
  if (uport->hw_stopped) {
   if (status) {
    uport->hw_stopped = 0;
    uport->ops->start_tx(uport);
    uart_write_wakeup(uport);
   }
  } else {
   if (!status) {
    uport->hw_stopped = 1;
    uport->ops->stop_tx(uport);
   }
  }

 }
}
