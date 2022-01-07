
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ab8500_charger {int ac_charger_attached_work; int charger_wq; int parent; int charger_attached_mutex; int ac_work; int dev; } ;
typedef int irqreturn_t ;


 int HZ ;
 int IRQ_HANDLED ;
 int dev_dbg (int ,char*) ;
 scalar_t__ is_ab8500 (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int queue_delayed_work (int ,int *,int ) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static irqreturn_t ab8500_charger_mainchplugdet_handler(int irq, void *_di)
{
 struct ab8500_charger *di = _di;

 dev_dbg(di->dev, "Main charger plugged\n");
 queue_work(di->charger_wq, &di->ac_work);

 mutex_lock(&di->charger_attached_mutex);
 mutex_unlock(&di->charger_attached_mutex);

 if (is_ab8500(di->parent))
  queue_delayed_work(di->charger_wq,
      &di->ac_charger_attached_work,
      HZ);
 return IRQ_HANDLED;
}
