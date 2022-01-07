
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ab8500_fg {int fg_check_hw_failure_work; int fg_wq; int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int dev_dbg (int ,char*) ;
 int queue_delayed_work (int ,int *,int ) ;

__attribute__((used)) static irqreturn_t ab8500_fg_batt_ovv_handler(int irq, void *_di)
{
 struct ab8500_fg *di = _di;

 dev_dbg(di->dev, "Battery OVV\n");


 queue_delayed_work(di->fg_wq, &di->fg_check_hw_failure_work, 0);

 return IRQ_HANDLED;
}
