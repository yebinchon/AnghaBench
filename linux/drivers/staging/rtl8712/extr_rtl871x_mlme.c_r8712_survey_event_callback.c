
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_11__ {scalar_t__* IEs; } ;
struct wlan_network {TYPE_5__ network; } ;
struct TYPE_12__ {int SsidLength; scalar_t__* Ssid; } ;
struct TYPE_7__ {int DwellTime; int HopPattern; int HopSet; int Length; } ;
struct TYPE_8__ {int ATIMWindow; int BeaconPeriod; int DSConfig; int Length; TYPE_1__ FHConfig; } ;
struct wlan_bssid_ex {int Length; int Privacy; int Rssi; int NetworkTypeInUse; int InfrastructureMode; int IELength; char* IEs; TYPE_6__ Ssid; int MacAddress; TYPE_2__ Configuration; } ;
struct TYPE_9__ {scalar_t__* IEs; int MacAddress; } ;
struct TYPE_10__ {TYPE_3__ network; } ;
struct mlme_priv {int lock2; int scanned_queue; TYPE_4__ cur_network; } ;
struct _adapter {struct mlme_priv mlmepriv; } ;


 int ETH_ALEN ;
 int WIFI_ADHOC_MASTER_STATE ;
 int _FW_UNDER_LINKING ;
 scalar_t__ check_fwstate (struct mlme_priv*,int ) ;
 void* le32_to_cpu (int) ;
 int memcmp (int *,int ,int ) ;
 int memcpy (scalar_t__*,char*,int) ;
 struct wlan_network* r8712_find_network (int *,int ) ;
 int r8712_get_wlan_bssid_ex_sz (struct wlan_bssid_ex*) ;
 int rtl8711_add_network (struct _adapter*,struct wlan_bssid_ex*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void r8712_survey_event_callback(struct _adapter *adapter, u8 *pbuf)
{
 unsigned long flags;
 u32 len;
 struct wlan_bssid_ex *pnetwork;
 struct mlme_priv *pmlmepriv = &adapter->mlmepriv;

 pnetwork = (struct wlan_bssid_ex *)pbuf;
 len = r8712_get_wlan_bssid_ex_sz(pnetwork);
 if (len > sizeof(struct wlan_bssid_ex))
  return;
 spin_lock_irqsave(&pmlmepriv->lock2, flags);

 if (check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE)) {
  if (!memcmp(&(pmlmepriv->cur_network.network.MacAddress),
      pnetwork->MacAddress, ETH_ALEN)) {
   struct wlan_network *ibss_wlan = ((void*)0);

   memcpy(pmlmepriv->cur_network.network.IEs,
    pnetwork->IEs, 8);
   ibss_wlan = r8712_find_network(
      &pmlmepriv->scanned_queue,
      pnetwork->MacAddress);
   if (ibss_wlan) {
    memcpy(ibss_wlan->network.IEs,
     pnetwork->IEs, 8);
    goto exit;
   }
  }
 }

 if (!check_fwstate(pmlmepriv, _FW_UNDER_LINKING)) {
  if (pnetwork->Ssid.Ssid[0] != 0) {
   rtl8711_add_network(adapter, pnetwork);
  } else {
   pnetwork->Ssid.SsidLength = 8;
   memcpy(pnetwork->Ssid.Ssid, "<hidden>", 8);
   rtl8711_add_network(adapter, pnetwork);
  }
 }
exit:
 spin_unlock_irqrestore(&pmlmepriv->lock2, flags);
}
