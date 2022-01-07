
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ab8500_fg {int ab8500_fg_complete; scalar_t__ nbr_cceoc_irq_cnt; int ab8500_fg_started; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int complete (int *) ;

__attribute__((used)) static irqreturn_t ab8500_fg_cc_data_end_handler(int irq, void *_di)
{
 struct ab8500_fg *di = _di;
 if (!di->nbr_cceoc_irq_cnt) {
  di->nbr_cceoc_irq_cnt++;
  complete(&di->ab8500_fg_started);
 } else {
  di->nbr_cceoc_irq_cnt = 0;
  complete(&di->ab8500_fg_complete);
 }
 return IRQ_HANDLED;
}
