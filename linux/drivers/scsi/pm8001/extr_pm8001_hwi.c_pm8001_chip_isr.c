
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pm8001_hba_info {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int pm8001_chip_interrupt_disable (struct pm8001_hba_info*,int ) ;
 int pm8001_chip_interrupt_enable (struct pm8001_hba_info*,int ) ;
 int process_oq (struct pm8001_hba_info*,int ) ;

__attribute__((used)) static irqreturn_t
pm8001_chip_isr(struct pm8001_hba_info *pm8001_ha, u8 vec)
{
 pm8001_chip_interrupt_disable(pm8001_ha, vec);
 process_oq(pm8001_ha, vec);
 pm8001_chip_interrupt_enable(pm8001_ha, vec);
 return IRQ_HANDLED;
}
