
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long VCC_MAX_PORTS ;
 scalar_t__ WARN_ON (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int ** vcc_table ;
 int vcc_table_lock ;

__attribute__((used)) static void vcc_table_remove(unsigned long index)
{
 unsigned long flags;

 if (WARN_ON(index >= VCC_MAX_PORTS))
  return;

 spin_lock_irqsave(&vcc_table_lock, flags);
 vcc_table[index] = ((void*)0);
 spin_unlock_irqrestore(&vcc_table_lock, flags);
}
