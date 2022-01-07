
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct brcmstb_waketmr {int irq; struct device* dev; } ;


 int dev_err (struct device*,char*) ;
 scalar_t__ device_may_wakeup (struct device*) ;
 int enable_irq_wake (int ) ;

__attribute__((used)) static int brcmstb_waketmr_prepare_suspend(struct brcmstb_waketmr *timer)
{
 struct device *dev = timer->dev;
 int ret = 0;

 if (device_may_wakeup(dev)) {
  ret = enable_irq_wake(timer->irq);
  if (ret) {
   dev_err(dev, "failed to enable wake-up interrupt\n");
   return ret;
  }
 }

 return ret;
}
