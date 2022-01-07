
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {int qos_activate; int update_beacon_wq; int watch_dog_wq; int reset_wq; } ;


 int cancel_delayed_work (int *) ;
 int cancel_work_sync (int *) ;

__attribute__((used)) static void rtl8192_cancel_deferred_work(struct r8192_priv *priv)
{
 cancel_work_sync(&priv->reset_wq);
 cancel_delayed_work(&priv->watch_dog_wq);
 cancel_delayed_work(&priv->update_beacon_wq);
 cancel_work_sync(&priv->qos_activate);
}
