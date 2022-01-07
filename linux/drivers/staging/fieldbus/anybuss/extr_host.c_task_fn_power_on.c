
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct anybuss_host {int irq; int card_boot; int regmap; scalar_t__ power_on; } ;
struct ab_task {int task_fn; } ;


 int EINPROGRESS ;
 int REG_IND_AB ;
 int enable_irq (int ) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int reinit_completion (int *) ;
 int reset_deassert (struct anybuss_host*) ;
 int task_fn_power_on_2 ;

__attribute__((used)) static int task_fn_power_on(struct anybuss_host *cd,
       struct ab_task *t)
{
 unsigned int dummy;

 if (cd->power_on)
  return 0;




 regmap_read(cd->regmap, REG_IND_AB, &dummy);
 reinit_completion(&cd->card_boot);
 enable_irq(cd->irq);
 reset_deassert(cd);
 t->task_fn = task_fn_power_on_2;
 return -EINPROGRESS;
}
