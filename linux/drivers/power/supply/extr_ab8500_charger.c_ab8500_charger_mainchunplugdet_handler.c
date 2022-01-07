
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ab8500_charger {int charger_attached_mutex; int ac_charger_attached_work; int ac_work; int charger_wq; int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int cancel_delayed_work_sync (int *) ;
 int dev_dbg (int ,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static irqreturn_t ab8500_charger_mainchunplugdet_handler(int irq, void *_di)
{
 struct ab8500_charger *di = _di;

 dev_dbg(di->dev, "Main charger unplugged\n");
 queue_work(di->charger_wq, &di->ac_work);

 cancel_delayed_work_sync(&di->ac_charger_attached_work);
 mutex_lock(&di->charger_attached_mutex);
 mutex_unlock(&di->charger_attached_mutex);

 return IRQ_HANDLED;
}
