
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ expires; } ;
struct vcc_port {TYPE_1__ tx_timer; int removed; int lock; } ;


 int add_timer (TYPE_1__*) ;
 int assert_spin_locked (int *) ;
 scalar_t__ jiffies ;
 int timer_pending (TYPE_1__*) ;

__attribute__((used)) static void vcc_kick_tx(struct vcc_port *port)
{
 assert_spin_locked(&port->lock);

 if (!timer_pending(&port->tx_timer) && !port->removed) {
  port->tx_timer.expires = (jiffies + 1);
  add_timer(&port->tx_timer);
 }
}
