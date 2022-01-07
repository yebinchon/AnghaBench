
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int doze_request; } ;
struct ks_wlan_private {int rw_dwork; int wq; TYPE_1__ sleepstatus; } ;


 int atomic_set (int *,int) ;
 int queue_delayed_work (int ,int *,int) ;

__attribute__((used)) static
void hostif_sleep_confirm(struct ks_wlan_private *priv)
{
 atomic_set(&priv->sleepstatus.doze_request, 1);
 queue_delayed_work(priv->wq, &priv->rw_dwork, 1);
}
