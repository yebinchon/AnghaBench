
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcc_port {int excl_locked; scalar_t__ refcnt; } ;


 int VCC_REF_DELAY ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;
 struct vcc_port** vcc_table ;
 int vcc_table_lock ;

__attribute__((used)) static struct vcc_port *vcc_get(unsigned long index, bool excl)
{
 struct vcc_port *port;
 unsigned long flags;

try_again:
 spin_lock_irqsave(&vcc_table_lock, flags);

 port = vcc_table[index];
 if (!port) {
  spin_unlock_irqrestore(&vcc_table_lock, flags);
  return ((void*)0);
 }

 if (!excl) {
  if (port->excl_locked) {
   spin_unlock_irqrestore(&vcc_table_lock, flags);
   udelay(VCC_REF_DELAY);
   goto try_again;
  }
  port->refcnt++;
  spin_unlock_irqrestore(&vcc_table_lock, flags);
  return port;
 }

 if (port->refcnt) {
  spin_unlock_irqrestore(&vcc_table_lock, flags);




  udelay(VCC_REF_DELAY/2);
  goto try_again;
 }

 port->refcnt++;
 port->excl_locked = 1;
 spin_unlock_irqrestore(&vcc_table_lock, flags);

 return port;
}
