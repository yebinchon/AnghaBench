
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int delay_rts_after_send; } ;
struct TYPE_4__ {TYPE_1__ rs485; } ;
struct uart_8250_port {TYPE_2__ port; struct uart_8250_em485* em485; } ;
struct uart_8250_em485 {int stop_tx_timer; int * active_timer; } ;


 int __do_stop_tx_rs485 (struct uart_8250_port*) ;
 int start_hrtimer_ms (int *,int ) ;

__attribute__((used)) static void __stop_tx_rs485(struct uart_8250_port *p)
{
 struct uart_8250_em485 *em485 = p->em485;





 if (p->port.rs485.delay_rts_after_send > 0) {
  em485->active_timer = &em485->stop_tx_timer;
  start_hrtimer_ms(&em485->stop_tx_timer,
       p->port.rs485.delay_rts_after_send);
 } else {
  __do_stop_tx_rs485(p);
 }
}
