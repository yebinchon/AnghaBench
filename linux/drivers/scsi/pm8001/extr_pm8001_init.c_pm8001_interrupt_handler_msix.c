
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pm8001_hba_info {int * tasklet; } ;
struct isr_param {size_t irq_id; struct pm8001_hba_info* drv_inst; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int (* isr ) (struct pm8001_hba_info*,size_t) ;int (* is_our_interrupt ) (struct pm8001_hba_info*) ;} ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 TYPE_1__* PM8001_CHIP_DISP ;
 int stub1 (struct pm8001_hba_info*) ;
 int stub2 (struct pm8001_hba_info*,size_t) ;
 int tasklet_schedule (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t pm8001_interrupt_handler_msix(int irq, void *opaque)
{
 struct isr_param *irq_vector;
 struct pm8001_hba_info *pm8001_ha;
 irqreturn_t ret = IRQ_HANDLED;
 irq_vector = (struct isr_param *)opaque;
 pm8001_ha = irq_vector->drv_inst;

 if (unlikely(!pm8001_ha))
  return IRQ_NONE;
 if (!PM8001_CHIP_DISP->is_our_interrupt(pm8001_ha))
  return IRQ_NONE;



 ret = PM8001_CHIP_DISP->isr(pm8001_ha, irq_vector->irq_id);

 return ret;
}
