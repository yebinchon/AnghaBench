
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sas_ha_struct {struct pm8001_hba_info* lldd_ha; } ;
struct pm8001_hba_info {int * tasklet; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int (* isr ) (struct pm8001_hba_info*,int ) ;int (* is_our_interrupt ) (struct pm8001_hba_info*) ;} ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 TYPE_1__* PM8001_CHIP_DISP ;
 int stub1 (struct pm8001_hba_info*) ;
 int stub2 (struct pm8001_hba_info*,int ) ;
 int tasklet_schedule (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t pm8001_interrupt_handler_intx(int irq, void *dev_id)
{
 struct pm8001_hba_info *pm8001_ha;
 irqreturn_t ret = IRQ_HANDLED;
 struct sas_ha_struct *sha = dev_id;
 pm8001_ha = sha->lldd_ha;
 if (unlikely(!pm8001_ha))
  return IRQ_NONE;
 if (!PM8001_CHIP_DISP->is_our_interrupt(pm8001_ha))
  return IRQ_NONE;




 ret = PM8001_CHIP_DISP->isr(pm8001_ha, 0);

 return ret;
}
