
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct sas_ha_struct {scalar_t__ lldd_ha; } ;
struct mvs_prv_info {size_t n_host; struct mvs_info** mvi; int mv_tasklet; } ;
struct mvs_info {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {size_t (* isr_status ) (struct mvs_info*,int) ;int (* isr ) (struct mvs_info*,int,size_t) ;int (* interrupt_enable ) (struct mvs_info*) ;int (* interrupt_disable ) (struct mvs_info*) ;} ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 TYPE_1__* MVS_CHIP_DISP ;
 int stub1 (struct mvs_info*) ;
 size_t stub2 (struct mvs_info*,int) ;
 int stub3 (struct mvs_info*) ;
 int stub4 (struct mvs_info*,int,size_t) ;
 int tasklet_schedule (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t mvs_interrupt(int irq, void *opaque)
{
 u32 core_nr;
 u32 stat;
 struct mvs_info *mvi;
 struct sas_ha_struct *sha = opaque;

 u32 i;


 core_nr = ((struct mvs_prv_info *)sha->lldd_ha)->n_host;
 mvi = ((struct mvs_prv_info *)sha->lldd_ha)->mvi[0];

 if (unlikely(!mvi))
  return IRQ_NONE;




 stat = MVS_CHIP_DISP->isr_status(mvi, irq);
 if (!stat) {



  return IRQ_NONE;
 }




 for (i = 0; i < core_nr; i++) {
  mvi = ((struct mvs_prv_info *)sha->lldd_ha)->mvi[i];
  MVS_CHIP_DISP->isr(mvi, irq, stat);
 }

 return IRQ_HANDLED;
}
