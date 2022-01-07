
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wlan_bssid_ex {int Ssid; int * MacAddress; } ;
struct ndis_802_11_ssid {int dummy; } ;
struct mlme_priv {int to_join; int lock; int assoc_timer; int fw_state; int assoc_ssid; int scan_to_timer; } ;
struct TYPE_2__ {struct wlan_bssid_ex dev_network; } ;
struct _adapter {TYPE_1__ registrypriv; struct mlme_priv mlmepriv; } ;


 int MAX_JOIN_TIMEOUT ;
 int WIFI_ADHOC_MASTER_STATE ;
 int WIFI_ADHOC_STATE ;
 int _FW_LINKED ;
 int _FW_UNDER_LINKING ;
 int _FW_UNDER_SURVEY ;
 int _clr_fwstate_ (struct mlme_priv*,int ) ;
 scalar_t__ check_fwstate (struct mlme_priv*,int ) ;
 int del_timer (int *) ;
 scalar_t__ jiffies ;
 int memcpy (int *,int *,int) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int r8712_generate_random_ibss (int *) ;
 int r8712_select_and_join_from_scan (struct mlme_priv*) ;
 int r8712_update_registrypriv_dev_network (struct _adapter*) ;
 int set_fwstate (struct mlme_priv*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void r8712_surveydone_event_callback(struct _adapter *adapter, u8 *pbuf)
{
 unsigned long irqL;
 struct mlme_priv *pmlmepriv = &adapter->mlmepriv;

 spin_lock_irqsave(&pmlmepriv->lock, irqL);

 if (check_fwstate(pmlmepriv, _FW_UNDER_SURVEY)) {
  del_timer(&pmlmepriv->scan_to_timer);

  _clr_fwstate_(pmlmepriv, _FW_UNDER_SURVEY);
 }

 if (pmlmepriv->to_join) {
  if (check_fwstate(pmlmepriv, WIFI_ADHOC_STATE)) {
   if (!check_fwstate(pmlmepriv, _FW_LINKED)) {
    set_fwstate(pmlmepriv, _FW_UNDER_LINKING);

    if (!r8712_select_and_join_from_scan(pmlmepriv)) {
     mod_timer(&pmlmepriv->assoc_timer, jiffies +
        msecs_to_jiffies(MAX_JOIN_TIMEOUT));
    } else {
     struct wlan_bssid_ex *pdev_network =
       &(adapter->registrypriv.dev_network);
     u8 *pibss =
       adapter->registrypriv.
       dev_network.MacAddress;
     pmlmepriv->fw_state ^= _FW_UNDER_SURVEY;
     memcpy(&pdev_network->Ssid,
      &pmlmepriv->assoc_ssid,
      sizeof(struct
        ndis_802_11_ssid));
     r8712_update_registrypriv_dev_network
      (adapter);
     r8712_generate_random_ibss(pibss);
     pmlmepriv->fw_state =
       WIFI_ADHOC_MASTER_STATE;
     pmlmepriv->to_join = 0;
    }
   }
  } else {
   pmlmepriv->to_join = 0;
   set_fwstate(pmlmepriv, _FW_UNDER_LINKING);
   if (!r8712_select_and_join_from_scan(pmlmepriv))
    mod_timer(&pmlmepriv->assoc_timer, jiffies +
       msecs_to_jiffies(MAX_JOIN_TIMEOUT));
   else
    _clr_fwstate_(pmlmepriv, _FW_UNDER_LINKING);
  }
 }
 spin_unlock_irqrestore(&pmlmepriv->lock, irqL);
}
