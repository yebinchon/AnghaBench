
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_otg {int active; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int mv_otg_enable (struct mv_otg*) ;
 int mv_otg_init_irq (struct mv_otg*) ;
 int mv_otg_run_state_machine (struct mv_otg*,int ) ;

__attribute__((used)) static irqreturn_t mv_otg_inputs_irq(int irq, void *dev)
{
 struct mv_otg *mvotg = dev;


 if (!mvotg->active) {
  mv_otg_enable(mvotg);
  mv_otg_init_irq(mvotg);
 }

 mv_otg_run_state_machine(mvotg, 0);

 return IRQ_HANDLED;
}
