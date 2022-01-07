
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wakeup_wait; int snooze_guard; int confirm_wait; int status; } ;
struct ks_wlan_private {int wakeup_work; TYPE_1__ psstatus; } ;


 int INIT_WORK (int *,int ) ;
 int PS_NONE ;
 int atomic_set (int *,int ) ;
 int init_completion (int *) ;
 int ks_wlan_hw_wakeup_task ;

__attribute__((used)) static inline void hostif_power_save_init(struct ks_wlan_private *priv)
{
 atomic_set(&priv->psstatus.status, PS_NONE);
 atomic_set(&priv->psstatus.confirm_wait, 0);
 atomic_set(&priv->psstatus.snooze_guard, 0);
 init_completion(&priv->psstatus.wakeup_wait);
 INIT_WORK(&priv->wakeup_work, ks_wlan_hw_wakeup_task);
}
