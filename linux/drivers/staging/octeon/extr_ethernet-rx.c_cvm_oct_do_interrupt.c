
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int disable_irq_nosync (int) ;
 int napi_schedule (void*) ;

__attribute__((used)) static irqreturn_t cvm_oct_do_interrupt(int irq, void *napi_id)
{

 disable_irq_nosync(irq);
 napi_schedule(napi_id);

 return IRQ_HANDLED;
}
