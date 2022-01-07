
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcc_port {int lock; } ;


 int VCC_CTL_HUP ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vcc_kick_tx (struct vcc_port*) ;
 scalar_t__ vcc_send_ctl (struct vcc_port*,int ) ;

__attribute__((used)) static void vcc_ldc_hup(struct vcc_port *port)
{
 unsigned long flags;

 spin_lock_irqsave(&port->lock, flags);

 if (vcc_send_ctl(port, VCC_CTL_HUP) < 0)
  vcc_kick_tx(port);

 spin_unlock_irqrestore(&port->lock, flags);
}
