
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_8250_port {TYPE_1__* em485; } ;
struct TYPE_2__ {int stop_tx_timer; int start_tx_timer; } ;


 int hrtimer_cancel (int *) ;
 int kfree (TYPE_1__*) ;

void serial8250_em485_destroy(struct uart_8250_port *p)
{
 if (!p->em485)
  return;

 hrtimer_cancel(&p->em485->start_tx_timer);
 hrtimer_cancel(&p->em485->stop_tx_timer);

 kfree(p->em485);
 p->em485 = ((void*)0);
}
