
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arche_platform_drvdata {scalar_t__ wake_detect_state; int wake_lock; int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int WD_STATE_COLDBOOT_START ;
 scalar_t__ WD_STATE_COLDBOOT_TRIG ;
 int WD_STATE_IDLE ;
 int apb_cold_boot ;
 int apb_poweroff ;
 int arche_platform_set_wake_detect_state (struct arche_platform_drvdata*,int ) ;
 int dev_warn (int ,char*) ;
 int device_for_each_child (int ,int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ usb3613_hub_mode_ctrl (int) ;

__attribute__((used)) static irqreturn_t arche_platform_wd_irq_thread(int irq, void *devid)
{
 struct arche_platform_drvdata *arche_pdata = devid;
 unsigned long flags;

 spin_lock_irqsave(&arche_pdata->wake_lock, flags);
 if (arche_pdata->wake_detect_state != WD_STATE_COLDBOOT_TRIG) {

  spin_unlock_irqrestore(&arche_pdata->wake_lock, flags);
  return IRQ_HANDLED;
 }

 arche_platform_set_wake_detect_state(arche_pdata,
          WD_STATE_COLDBOOT_START);
 spin_unlock_irqrestore(&arche_pdata->wake_lock, flags);


 device_for_each_child(arche_pdata->dev, ((void*)0), apb_poweroff);


 device_for_each_child(arche_pdata->dev, ((void*)0), apb_cold_boot);


 if (usb3613_hub_mode_ctrl(1))
  dev_warn(arche_pdata->dev, "failed to control hub device\n");

 spin_lock_irqsave(&arche_pdata->wake_lock, flags);
 arche_platform_set_wake_detect_state(arche_pdata, WD_STATE_IDLE);
 spin_unlock_irqrestore(&arche_pdata->wake_lock, flags);

 return IRQ_HANDLED;
}
