
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vio_driver_state {TYPE_1__* vdev; } ;
struct TYPE_5__ {scalar_t__ expires; } ;
struct vcc_port {TYPE_2__ rx_timer; int removed; int lock; struct vio_driver_state vio; } ;
struct TYPE_4__ {int rx_irq; } ;


 int add_timer (TYPE_2__*) ;
 int assert_spin_locked (int *) ;
 int disable_irq_nosync (int ) ;
 scalar_t__ jiffies ;
 int timer_pending (TYPE_2__*) ;

__attribute__((used)) static void vcc_kick_rx(struct vcc_port *port)
{
 struct vio_driver_state *vio = &port->vio;

 assert_spin_locked(&port->lock);

 if (!timer_pending(&port->rx_timer) && !port->removed) {
  disable_irq_nosync(vio->vdev->rx_irq);
  port->rx_timer.expires = (jiffies + 1);
  add_timer(&port->rx_timer);
 }
}
