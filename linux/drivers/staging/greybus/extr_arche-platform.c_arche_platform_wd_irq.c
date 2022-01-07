
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arche_platform_drvdata {scalar_t__ wake_detect_state; int wake_lock; scalar_t__ wake_detect_start; int wake_detect; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_WAKE_THREAD ;
 int WD_COLDBOOT_PULSE_WIDTH_MS ;
 scalar_t__ WD_STATE_BOOT_INIT ;
 scalar_t__ WD_STATE_COLDBOOT_START ;
 scalar_t__ WD_STATE_COLDBOOT_TRIG ;
 scalar_t__ WD_STATE_IDLE ;
 int arche_platform_set_wake_detect_state (struct arche_platform_drvdata*,scalar_t__) ;
 scalar_t__ gpiod_get_value (int ) ;
 scalar_t__ jiffies ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ time_before (scalar_t__,scalar_t__) ;

__attribute__((used)) static irqreturn_t arche_platform_wd_irq(int irq, void *devid)
{
 struct arche_platform_drvdata *arche_pdata = devid;
 unsigned long flags;

 spin_lock_irqsave(&arche_pdata->wake_lock, flags);

 if (gpiod_get_value(arche_pdata->wake_detect)) {







  if (arche_pdata->wake_detect_state == WD_STATE_BOOT_INIT) {
   if (time_before(jiffies,
     arche_pdata->wake_detect_start +
     msecs_to_jiffies(WD_COLDBOOT_PULSE_WIDTH_MS))) {
    arche_platform_set_wake_detect_state(arche_pdata,
             WD_STATE_IDLE);
   } else {




    if (arche_pdata->wake_detect_state !=
      WD_STATE_COLDBOOT_START) {
     arche_platform_set_wake_detect_state(arche_pdata,
              WD_STATE_COLDBOOT_TRIG);
     spin_unlock_irqrestore(
      &arche_pdata->wake_lock,
      flags);
     return IRQ_WAKE_THREAD;
    }
   }
  }
 } else {

  if (arche_pdata->wake_detect_state == WD_STATE_IDLE) {
   arche_pdata->wake_detect_start = jiffies;







   arche_platform_set_wake_detect_state(arche_pdata,
            WD_STATE_BOOT_INIT);
  }
 }

 spin_unlock_irqrestore(&arche_pdata->wake_lock, flags);

 return IRQ_HANDLED;
}
