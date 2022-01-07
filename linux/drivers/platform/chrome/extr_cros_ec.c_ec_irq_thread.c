
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cros_ec_device {int event_notifier; int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int blocking_notifier_call_chain (int *,int ,struct cros_ec_device*) ;
 int cros_ec_get_next_event (struct cros_ec_device*,int*) ;
 scalar_t__ device_may_wakeup (int ) ;
 int pm_wakeup_event (int ,int ) ;

__attribute__((used)) static irqreturn_t ec_irq_thread(int irq, void *data)
{
 struct cros_ec_device *ec_dev = data;
 bool wake_event = 1;
 int ret;

 ret = cros_ec_get_next_event(ec_dev, &wake_event);






 if (wake_event && device_may_wakeup(ec_dev->dev))
  pm_wakeup_event(ec_dev->dev, 0);

 if (ret > 0)
  blocking_notifier_call_chain(&ec_dev->event_notifier,
          0, ec_dev);
 return IRQ_HANDLED;
}
