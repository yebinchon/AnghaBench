
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcc_port {int dummy; } ;


 int VCC_MAX_PORTS ;
 int VCC_MINOR_START ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct vcc_port** vcc_table ;
 int vcc_table_lock ;

__attribute__((used)) static int vcc_table_add(struct vcc_port *port)
{
 unsigned long flags;
 int i;

 spin_lock_irqsave(&vcc_table_lock, flags);
 for (i = VCC_MINOR_START; i < VCC_MAX_PORTS; i++) {
  if (!vcc_table[i]) {
   vcc_table[i] = port;
   break;
  }
 }
 spin_unlock_irqrestore(&vcc_table_lock, flags);

 if (i < VCC_MAX_PORTS)
  return i;
 else
  return -1;
}
