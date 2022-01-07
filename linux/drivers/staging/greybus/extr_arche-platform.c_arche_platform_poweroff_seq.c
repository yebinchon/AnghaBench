
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arche_platform_drvdata {scalar_t__ state; int is_reset_act_hi; int svc_reset; int svc_ref_clk; int wake_lock; int wake_detect_irq; } ;


 scalar_t__ ARCHE_PLATFORM_STATE_FW_FLASHING ;
 scalar_t__ ARCHE_PLATFORM_STATE_OFF ;
 int WD_STATE_IDLE ;
 int arche_platform_set_state (struct arche_platform_drvdata*,scalar_t__) ;
 int arche_platform_set_wake_detect_state (struct arche_platform_drvdata*,int ) ;
 int clk_disable_unprepare (int ) ;
 int disable_irq (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int svc_reset_onoff (int ,int ) ;

__attribute__((used)) static void
arche_platform_poweroff_seq(struct arche_platform_drvdata *arche_pdata)
{
 unsigned long flags;

 if (arche_pdata->state == ARCHE_PLATFORM_STATE_OFF)
  return;


 if (arche_pdata->state != ARCHE_PLATFORM_STATE_FW_FLASHING) {
  disable_irq(arche_pdata->wake_detect_irq);

  spin_lock_irqsave(&arche_pdata->wake_lock, flags);
  arche_platform_set_wake_detect_state(arche_pdata,
           WD_STATE_IDLE);
  spin_unlock_irqrestore(&arche_pdata->wake_lock, flags);
 }

 clk_disable_unprepare(arche_pdata->svc_ref_clk);


 svc_reset_onoff(arche_pdata->svc_reset, arche_pdata->is_reset_act_hi);

 arche_platform_set_state(arche_pdata, ARCHE_PLATFORM_STATE_OFF);
}
