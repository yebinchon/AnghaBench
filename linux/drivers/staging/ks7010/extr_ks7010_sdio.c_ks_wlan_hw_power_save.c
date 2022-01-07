
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ks_wlan_private {int rw_dwork; int wq; } ;


 int queue_delayed_work (int ,int *,int) ;

int ks_wlan_hw_power_save(struct ks_wlan_private *priv)
{
 queue_delayed_work(priv->wq, &priv->rw_dwork, 1);
 return 0;
}
