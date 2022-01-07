
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int MacAddress; } ;
struct wlan_network {int fixed; TYPE_1__ network; } ;
struct sta_priv {int asoc_sta_count; int sta_hash_lock; } ;
struct sta_info {int dummy; } ;
struct mlme_priv {int scanned_queue; struct wlan_network cur_network; } ;
struct _adapter {struct sta_priv stapriv; struct mlme_priv mlmepriv; } ;


 int WIFI_ADHOC_MASTER_STATE ;
 int WIFI_ADHOC_STATE ;
 int WIFI_AP_STATE ;
 int WIFI_STATION_STATE ;
 scalar_t__ check_fwstate (struct mlme_priv*,int) ;
 int free_network_nolock (struct mlme_priv*,struct wlan_network*) ;
 struct wlan_network* r8712_find_network (int *,int ) ;
 int r8712_free_all_stainfo (struct _adapter*) ;
 int r8712_free_stainfo (struct _adapter*,struct sta_info*) ;
 struct sta_info* r8712_get_stainfo (struct sta_priv*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void r8712_free_assoc_resources(struct _adapter *adapter)
{
 unsigned long irqL;
 struct wlan_network *pwlan = ((void*)0);
 struct mlme_priv *pmlmepriv = &adapter->mlmepriv;
 struct sta_priv *pstapriv = &adapter->stapriv;
 struct wlan_network *tgt_network = &pmlmepriv->cur_network;

 pwlan = r8712_find_network(&pmlmepriv->scanned_queue,
       tgt_network->network.MacAddress);

 if (check_fwstate(pmlmepriv, WIFI_STATION_STATE | WIFI_AP_STATE)) {
  struct sta_info *psta;

  psta = r8712_get_stainfo(&adapter->stapriv,
      tgt_network->network.MacAddress);

  spin_lock_irqsave(&pstapriv->sta_hash_lock, irqL);
  r8712_free_stainfo(adapter, psta);
  spin_unlock_irqrestore(&pstapriv->sta_hash_lock, irqL);
 }

 if (check_fwstate(pmlmepriv,
     WIFI_ADHOC_STATE | WIFI_ADHOC_MASTER_STATE | WIFI_AP_STATE))
  r8712_free_all_stainfo(adapter);
 if (pwlan)
  pwlan->fixed = 0;

 if (((check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE)) &&
      (adapter->stapriv.asoc_sta_count == 1)))
  free_network_nolock(pmlmepriv, pwlan);
}
