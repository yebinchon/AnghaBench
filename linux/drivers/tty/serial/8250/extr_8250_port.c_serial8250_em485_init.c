
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uart_8250_port {TYPE_1__* em485; } ;
struct uart_8250_em485 {int dummy; } ;
struct TYPE_4__ {int * function; } ;
struct TYPE_3__ {int * active_timer; struct uart_8250_port* port; TYPE_2__ start_tx_timer; TYPE_2__ stop_tx_timer; } ;


 int CLOCK_MONOTONIC ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int HRTIMER_MODE_REL ;
 int hrtimer_init (TYPE_2__*,int ,int ) ;
 TYPE_1__* kmalloc (int,int ) ;
 int serial8250_em485_handle_start_tx ;
 int serial8250_em485_handle_stop_tx ;
 int serial8250_em485_rts_after_send (struct uart_8250_port*) ;

int serial8250_em485_init(struct uart_8250_port *p)
{
 if (p->em485)
  return 0;

 p->em485 = kmalloc(sizeof(struct uart_8250_em485), GFP_ATOMIC);
 if (!p->em485)
  return -ENOMEM;

 hrtimer_init(&p->em485->stop_tx_timer, CLOCK_MONOTONIC,
       HRTIMER_MODE_REL);
 hrtimer_init(&p->em485->start_tx_timer, CLOCK_MONOTONIC,
       HRTIMER_MODE_REL);
 p->em485->stop_tx_timer.function = &serial8250_em485_handle_stop_tx;
 p->em485->start_tx_timer.function = &serial8250_em485_handle_start_tx;
 p->em485->port = p;
 p->em485->active_timer = ((void*)0);
 serial8250_em485_rts_after_send(p);

 return 0;
}
