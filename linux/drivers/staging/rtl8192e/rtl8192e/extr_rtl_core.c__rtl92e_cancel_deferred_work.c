
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r8192_priv {int qos_activate; int reset_wq; TYPE_1__* rtllib; int update_beacon_wq; int watch_dog_wq; } ;
struct TYPE_2__ {int hw_sleep_wq; } ;


 int cancel_delayed_work (int *) ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;

__attribute__((used)) static void _rtl92e_cancel_deferred_work(struct r8192_priv *priv)
{
 cancel_delayed_work_sync(&priv->watch_dog_wq);
 cancel_delayed_work_sync(&priv->update_beacon_wq);
 cancel_delayed_work(&priv->rtllib->hw_sleep_wq);
 cancel_work_sync(&priv->reset_wq);
 cancel_work_sync(&priv->qos_activate);
}
