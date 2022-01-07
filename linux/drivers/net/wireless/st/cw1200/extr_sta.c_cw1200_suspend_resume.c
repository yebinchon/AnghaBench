
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wsm_suspend_resume {scalar_t__ stop; int link_id; scalar_t__ multicast; } ;
struct cw1200_common {int tx_multicast; int join_dtim_period; int beacon_int; int ps_state_lock; int mcast_timeout; scalar_t__ buffered_multicasts; scalar_t__ aid0_bit_set; int pm_state; } ;


 int HZ ;
 int cw1200_bh_wakeup (struct cw1200_common*) ;
 int cw1200_pm_stay_awake (int *,int) ;
 int cw1200_ps_notify (struct cw1200_common*,int ,scalar_t__) ;
 int del_timer_sync (int *) ;
 int pr_debug (char*,char*,char*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void cw1200_suspend_resume(struct cw1200_common *priv,
     struct wsm_suspend_resume *arg)
{
 pr_debug("[AP] %s: %s\n",
   arg->stop ? "stop" : "start",
   arg->multicast ? "broadcast" : "unicast");

 if (arg->multicast) {
  bool cancel_tmo = 0;
  spin_lock_bh(&priv->ps_state_lock);
  if (arg->stop) {
   priv->tx_multicast = 0;
  } else {





   cw1200_pm_stay_awake(&priv->pm_state,
          priv->join_dtim_period *
          (priv->beacon_int + 20) * HZ / 1024);
   priv->tx_multicast = (priv->aid0_bit_set &&
           priv->buffered_multicasts);
   if (priv->tx_multicast) {
    cancel_tmo = 1;
    cw1200_bh_wakeup(priv);
   }
  }
  spin_unlock_bh(&priv->ps_state_lock);
  if (cancel_tmo)
   del_timer_sync(&priv->mcast_timeout);
 } else {
  spin_lock_bh(&priv->ps_state_lock);
  cw1200_ps_notify(priv, arg->link_id, arg->stop);
  spin_unlock_bh(&priv->ps_state_lock);
  if (!arg->stop)
   cw1200_bh_wakeup(priv);
 }
 return;
}
