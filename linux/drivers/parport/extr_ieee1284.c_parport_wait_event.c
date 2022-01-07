
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct parport {int timer; TYPE_3__* physport; } ;
struct TYPE_4__ {int irq; } ;
struct TYPE_6__ {TYPE_1__ ieee1284; TYPE_2__* cad; } ;
struct TYPE_5__ {int timeout; } ;


 int del_timer_sync (int *) ;
 int down_interruptible (int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int timeout_waiting_on_port ;
 int timer_setup (int *,int ,int ) ;

int parport_wait_event (struct parport *port, signed long timeout)
{
 int ret;

 if (!port->physport->cad->timeout)


  return 1;

 timer_setup(&port->timer, timeout_waiting_on_port, 0);
 mod_timer(&port->timer, jiffies + timeout);
 ret = down_interruptible (&port->physport->ieee1284.irq);
 if (!del_timer_sync(&port->timer) && !ret)

  ret = 1;

 return ret;
}
