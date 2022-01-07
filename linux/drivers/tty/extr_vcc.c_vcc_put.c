
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcc_port {int excl_locked; int refcnt; } ;


 scalar_t__ WARN_ON (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vcc_table_lock ;

__attribute__((used)) static void vcc_put(struct vcc_port *port, bool excl)
{
 unsigned long flags;

 if (!port)
  return;

 spin_lock_irqsave(&vcc_table_lock, flags);


 if (WARN_ON((excl && !port->excl_locked) ||
      (!excl && port->excl_locked)))
  goto done;

 port->refcnt--;

 if (excl)
  port->excl_locked = 0;

done:
 spin_unlock_irqrestore(&vcc_table_lock, flags);
}
