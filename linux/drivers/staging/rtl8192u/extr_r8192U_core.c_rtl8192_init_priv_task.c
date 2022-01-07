
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {int irq_rx_tasklet; int qos_activate; int initialgain_operate_wq; int update_beacon_wq; int rfpath_check_wq; int txpower_tracking_wq; int watch_dog_wq; int reset_wq; } ;
struct net_device {int dummy; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_WORK (int *,int ) ;
 int InitialGainOperateWorkItemCallBack ;
 int dm_rf_pathcheck_workitemcallback ;
 int dm_txpower_trackingcallback ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 scalar_t__ rtl8192_irq_rx_tasklet ;
 int rtl8192_qos_activate ;
 int rtl8192_restart ;
 int rtl8192_update_beacon ;
 int rtl819x_watchdog_wqcallback ;
 int tasklet_init (int *,void (*) (unsigned long),unsigned long) ;

__attribute__((used)) static void rtl8192_init_priv_task(struct net_device *dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);


 INIT_WORK(&priv->reset_wq, rtl8192_restart);

 INIT_DELAYED_WORK(&priv->watch_dog_wq,
     rtl819x_watchdog_wqcallback);
 INIT_DELAYED_WORK(&priv->txpower_tracking_wq,
     dm_txpower_trackingcallback);
 INIT_DELAYED_WORK(&priv->rfpath_check_wq,
     dm_rf_pathcheck_workitemcallback);
 INIT_DELAYED_WORK(&priv->update_beacon_wq,
     rtl8192_update_beacon);
 INIT_DELAYED_WORK(&priv->initialgain_operate_wq,
     InitialGainOperateWorkItemCallBack);
 INIT_WORK(&priv->qos_activate, rtl8192_qos_activate);

 tasklet_init(&priv->irq_rx_tasklet,
       (void(*)(unsigned long))rtl8192_irq_rx_tasklet,
       (unsigned long)priv);
}
