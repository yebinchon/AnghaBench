
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vio_driver_state {TYPE_1__* vdev; } ;
struct TYPE_4__ {scalar_t__ expires; } ;
struct vcc_port {int lock; scalar_t__ removed; int tty; struct vio_driver_state vio; TYPE_2__ rx_timer; } ;
struct timer_list {int dummy; } ;
struct TYPE_3__ {int rx_irq; } ;


 int ECONNRESET ;
 int enable_irq (int ) ;
 struct vcc_port* from_timer (int ,struct timer_list*,int ) ;
 struct vcc_port* port ;
 int rx_timer ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vcc_ldc_read (struct vcc_port*) ;
 int vcc_put (struct vcc_port*,int) ;
 int vio_conn_reset (struct vio_driver_state*) ;

__attribute__((used)) static void vcc_rx_timer(struct timer_list *t)
{
 struct vcc_port *port = from_timer(port, t, rx_timer);
 struct vio_driver_state *vio;
 unsigned long flags;
 int rv;

 spin_lock_irqsave(&port->lock, flags);
 port->rx_timer.expires = 0;

 vio = &port->vio;

 enable_irq(vio->vdev->rx_irq);

 if (!port->tty || port->removed)
  goto done;

 rv = vcc_ldc_read(port);
 if (rv == -ECONNRESET)
  vio_conn_reset(vio);

done:
 spin_unlock_irqrestore(&port->lock, flags);
 vcc_put(port, 0);
}
