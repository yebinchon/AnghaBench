
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esas2r_adapter {int flags2; } ;
typedef int irqreturn_t ;


 int AF2_INT_PENDING ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int esas2r_adapter_interrupt_pending (struct esas2r_adapter*) ;
 int esas2r_schedule_tasklet (struct esas2r_adapter*) ;
 int set_bit (int ,int *) ;

irqreturn_t esas2r_interrupt(int irq, void *dev_id)
{
 struct esas2r_adapter *a = (struct esas2r_adapter *)dev_id;

 if (!esas2r_adapter_interrupt_pending(a))
  return IRQ_NONE;

 set_bit(AF2_INT_PENDING, &a->flags2);
 esas2r_schedule_tasklet(a);

 return IRQ_HANDLED;
}
