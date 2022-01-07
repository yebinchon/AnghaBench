
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qla_hw_data {int hardware_lock; scalar_t__ interrupts_on; } ;


 int QLAFX00_DISABLE_ICNTRL_REG (struct qla_hw_data*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
qlafx00_disable_intrs(struct qla_hw_data *ha)
{
 unsigned long flags = 0;

 spin_lock_irqsave(&ha->hardware_lock, flags);
 ha->interrupts_on = 0;
 QLAFX00_DISABLE_ICNTRL_REG(ha);
 spin_unlock_irqrestore(&ha->hardware_lock, flags);
}
