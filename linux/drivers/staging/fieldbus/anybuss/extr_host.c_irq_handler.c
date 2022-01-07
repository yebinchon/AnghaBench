
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct anybuss_host {int wq; int card_boot; int ind_ab; int regmap; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int atomic_set (int *,int) ;
 int complete (int *) ;
 int read_ind_ab (int ) ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t irq_handler(int irq, void *data)
{
 struct anybuss_host *cd = data;
 int ind_ab;
 ind_ab = read_ind_ab(cd->regmap);
 if (ind_ab < 0)
  return IRQ_NONE;
 atomic_set(&cd->ind_ab, ind_ab);
 complete(&cd->card_boot);
 wake_up(&cd->wq);
 return IRQ_HANDLED;
}
