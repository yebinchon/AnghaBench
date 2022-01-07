
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bq24190_dev_info {int irq_event; int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int bq24190_check_status (struct bq24190_dev_info*) ;
 int dev_warn (int ,char*,int) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int pm_runtime_put_noidle (int ) ;

__attribute__((used)) static irqreturn_t bq24190_irq_handler_thread(int irq, void *data)
{
 struct bq24190_dev_info *bdi = data;
 int error;

 bdi->irq_event = 1;
 error = pm_runtime_get_sync(bdi->dev);
 if (error < 0) {
  dev_warn(bdi->dev, "pm_runtime_get failed: %i\n", error);
  pm_runtime_put_noidle(bdi->dev);
  return IRQ_NONE;
 }
 bq24190_check_status(bdi);
 pm_runtime_mark_last_busy(bdi->dev);
 pm_runtime_put_autosuspend(bdi->dev);
 bdi->irq_event = 0;

 return IRQ_HANDLED;
}
