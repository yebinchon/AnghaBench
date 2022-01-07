
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ab8500_fg {int fg_acc_cur_work; int fg_wq; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int queue_work (int ,int *) ;

__attribute__((used)) static irqreturn_t ab8500_fg_cc_convend_handler(int irq, void *_di)
{
 struct ab8500_fg *di = _di;

 queue_work(di->fg_wq, &di->fg_acc_cur_work);

 return IRQ_HANDLED;
}
