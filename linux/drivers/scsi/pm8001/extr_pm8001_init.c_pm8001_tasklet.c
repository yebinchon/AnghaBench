
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pm8001_hba_info {int dummy; } ;
struct isr_param {int irq_id; struct pm8001_hba_info* drv_inst; } ;
struct TYPE_2__ {int (* isr ) (struct pm8001_hba_info*,int ) ;} ;


 int BUG_ON (int) ;
 TYPE_1__* PM8001_CHIP_DISP ;
 int stub1 (struct pm8001_hba_info*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void pm8001_tasklet(unsigned long opaque)
{
 struct pm8001_hba_info *pm8001_ha;
 struct isr_param *irq_vector;

 irq_vector = (struct isr_param *)opaque;
 pm8001_ha = irq_vector->drv_inst;
 if (unlikely(!pm8001_ha))
  BUG_ON(1);
 PM8001_CHIP_DISP->isr(pm8001_ha, irq_vector->irq_id);
}
