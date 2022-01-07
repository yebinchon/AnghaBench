
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wlan_network {int dummy; } ;
struct ndis_802_11_ssid {int SsidLength; int Ssid; } ;
struct TYPE_4__ {int Ssid; int SsidLength; } ;
struct mlme_priv {int assoc_by_bssid; int lock; TYPE_2__ assoc_ssid; struct wlan_network cur_network; } ;
struct TYPE_3__ {scalar_t__ btkip_countermeasure; } ;
struct _adapter {TYPE_1__ securitypriv; int hw_init_completed; struct mlme_priv mlmepriv; } ;


 int WIFI_ADHOC_MASTER_STATE ;
 int WIFI_ADHOC_STATE ;
 int WIFI_STATION_STATE ;
 int _FW_LINKED ;
 int _FW_UNDER_LINKING ;
 int _FW_UNDER_SURVEY ;
 int _clr_fwstate_ (struct mlme_priv*,int) ;
 scalar_t__ check_fwstate (struct mlme_priv*,int) ;
 int do_join (struct _adapter*) ;
 int memcmp (int *,int ,int ) ;
 int memcpy (TYPE_2__*,struct ndis_802_11_ssid*,int) ;
 int r8712_disassoc_cmd (struct _adapter*) ;
 int r8712_free_assoc_resources (struct _adapter*) ;
 int r8712_ind_disconnect (struct _adapter*) ;
 int r8712_is_same_ibss (struct _adapter*,struct wlan_network*) ;
 int set_fwstate (struct mlme_priv*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int validate_ssid (struct ndis_802_11_ssid*) ;

void r8712_set_802_11_ssid(struct _adapter *padapter,
      struct ndis_802_11_ssid *ssid)
{
 unsigned long irqL;
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 struct wlan_network *pnetwork = &pmlmepriv->cur_network;

 if (!padapter->hw_init_completed)
  return;
 spin_lock_irqsave(&pmlmepriv->lock, irqL);
 if (check_fwstate(pmlmepriv, _FW_UNDER_SURVEY | _FW_UNDER_LINKING)) {
  check_fwstate(pmlmepriv, _FW_UNDER_LINKING);
  goto _Abort_Set_SSID;
 }
 if (check_fwstate(pmlmepriv, _FW_LINKED | WIFI_ADHOC_MASTER_STATE)) {
  if ((pmlmepriv->assoc_ssid.SsidLength == ssid->SsidLength) &&
      (!memcmp(&pmlmepriv->assoc_ssid.Ssid, ssid->Ssid,
      ssid->SsidLength))) {
   if (!check_fwstate(pmlmepriv, WIFI_STATION_STATE)) {
    if (!r8712_is_same_ibss(padapter,
         pnetwork)) {




     r8712_disassoc_cmd(padapter);
     if (check_fwstate(pmlmepriv,
         _FW_LINKED))
      r8712_ind_disconnect(padapter);
     r8712_free_assoc_resources(padapter);
     if (check_fwstate(pmlmepriv,
          WIFI_ADHOC_MASTER_STATE)) {
      _clr_fwstate_(pmlmepriv,
          WIFI_ADHOC_MASTER_STATE);
      set_fwstate(pmlmepriv,
           WIFI_ADHOC_STATE);
     }
    } else {



     goto _Abort_Set_SSID;
    }
   }
  } else {
   r8712_disassoc_cmd(padapter);
   if (check_fwstate(pmlmepriv, _FW_LINKED))
    r8712_ind_disconnect(padapter);
   r8712_free_assoc_resources(padapter);
   if (check_fwstate(pmlmepriv,
       WIFI_ADHOC_MASTER_STATE)) {
    _clr_fwstate_(pmlmepriv,
           WIFI_ADHOC_MASTER_STATE);
    set_fwstate(pmlmepriv, WIFI_ADHOC_STATE);
   }
  }
 }
 if (padapter->securitypriv.btkip_countermeasure)
  goto _Abort_Set_SSID;
 if (!validate_ssid(ssid))
  goto _Abort_Set_SSID;
 memcpy(&pmlmepriv->assoc_ssid, ssid, sizeof(struct ndis_802_11_ssid));
 pmlmepriv->assoc_by_bssid = 0;
 do_join(padapter);
 goto done;
_Abort_Set_SSID:
done:
 spin_unlock_irqrestore(&pmlmepriv->lock, irqL);
}
