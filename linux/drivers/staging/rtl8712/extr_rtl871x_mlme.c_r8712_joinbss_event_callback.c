
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef union pn48 {int dummy; } pn48 ;
typedef union Keytype {int dummy; } Keytype ;
struct TYPE_11__ {scalar_t__ DwellTime; scalar_t__ HopPattern; scalar_t__ HopSet; scalar_t__ Length; } ;
struct TYPE_12__ {scalar_t__ ATIMWindow; scalar_t__ BeaconPeriod; scalar_t__ DSConfig; scalar_t__ Length; TYPE_1__ FHConfig; } ;
struct TYPE_14__ {scalar_t__ SsidLength; } ;
struct TYPE_15__ {int Length; scalar_t__ Privacy; scalar_t__ Rssi; scalar_t__ NetworkTypeInUse; scalar_t__ InfrastructureMode; scalar_t__ IELength; scalar_t__ IEs; int MacAddress; TYPE_2__ Configuration; TYPE_4__ Ssid; } ;
typedef TYPE_5__ u8 ;
typedef int u32 ;
struct wlan_network {scalar_t__ join_res; scalar_t__ network_type; int fixed; scalar_t__ aid; TYPE_5__ network; } ;
struct wlan_bssid_ex {int dummy; } ;
struct sta_priv {int sta_hash_lock; } ;
struct sta_info {scalar_t__ aid; int qos_option; int mac_id; int ieee8021x_blocked; int rxpn; int txpn; int tkiptxmickey; int tkiprxmickey; int x_UncstKey; int XPrivacy; } ;
struct mlme_priv {int lock; int assoc_timer; int fw_state; int scanned_queue; struct wlan_network cur_network; } ;
struct list_head {int dummy; } ;
struct TYPE_13__ {int AuthAlgrthm; int binstallGrpkey; int busetkipkey; int bgrpkey_handshake; int PrivacyAlgrthm; } ;
struct _adapter {TYPE_3__ securitypriv; struct mlme_priv mlmepriv; struct sta_priv stapriv; } ;
struct NDIS_802_11_FIXED_IEs {int dummy; } ;


 int ETH_ALEN ;
 int GFP_ATOMIC ;


 int WIFI_ADHOC_STATE ;
 int WIFI_NULL_STATE ;
 int WIFI_STATION_STATE ;
 int _FW_LINKED ;
 int _FW_UNDER_LINKING ;
 int _clr_fwstate_ (struct mlme_priv*,int ) ;
 scalar_t__ check_fwstate (struct mlme_priv*,int ) ;
 int del_timer (int *) ;
 scalar_t__ jiffies ;
 int kfree (struct wlan_network*) ;
 struct wlan_network* kmalloc (int,int ) ;
 void* le32_to_cpu (scalar_t__) ;
 int memcmp (int ,int ,int ) ;
 int memcpy (TYPE_5__*,TYPE_5__*,int) ;
 int memset (TYPE_5__*,int ,int) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 struct sta_info* r8712_alloc_stainfo (struct sta_priv*,int ) ;
 struct wlan_network* r8712_find_network (int *,int ) ;
 int r8712_free_stainfo (struct _adapter*,struct sta_info*) ;
 struct sta_info* r8712_get_stainfo (struct sta_priv*,int ) ;
 int r8712_get_wlan_bssid_ex_sz (TYPE_5__*) ;
 int r8712_indicate_connect (struct _adapter*) ;
 int r8712_update_protection (struct _adapter*,scalar_t__,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int update_ht_cap (struct _adapter*,scalar_t__,scalar_t__) ;

void r8712_joinbss_event_callback(struct _adapter *adapter, u8 *pbuf)
{
 unsigned long irqL = 0, irqL2;
 struct sta_info *ptarget_sta = ((void*)0), *pcur_sta = ((void*)0);
 struct sta_priv *pstapriv = &adapter->stapriv;
 struct mlme_priv *pmlmepriv = &adapter->mlmepriv;
 struct wlan_network *cur_network = &pmlmepriv->cur_network;
 struct wlan_network *pcur_wlan = ((void*)0), *ptarget_wlan = ((void*)0);
 unsigned int the_same_macaddr = 0;
 struct wlan_network *pnetwork;

 if (sizeof(struct list_head) == 4 * sizeof(u32)) {
  pnetwork = kmalloc(sizeof(struct wlan_network), GFP_ATOMIC);
  if (!pnetwork)
   return;
  memcpy((u8 *)pnetwork + 16, (u8 *)pbuf + 8,
         sizeof(struct wlan_network) - 16);
 } else {
  pnetwork = (struct wlan_network *)pbuf;
 }
 the_same_macaddr = !memcmp(pnetwork->network.MacAddress,
       cur_network->network.MacAddress, ETH_ALEN);
 pnetwork->network.Length =
   r8712_get_wlan_bssid_ex_sz(&pnetwork->network);
 spin_lock_irqsave(&pmlmepriv->lock, irqL);
 if (pnetwork->network.Length > sizeof(struct wlan_bssid_ex))
  goto ignore_joinbss_callback;
 if (pnetwork->join_res > 0) {
  if (check_fwstate(pmlmepriv, _FW_UNDER_LINKING)) {

   if (check_fwstate(pmlmepriv, _FW_LINKED)) {
    if (the_same_macaddr) {
     ptarget_wlan =
         r8712_find_network(&pmlmepriv->
         scanned_queue,
         cur_network->network.MacAddress);
    } else {
     pcur_wlan =
          r8712_find_network(&pmlmepriv->
          scanned_queue,
          cur_network->network.MacAddress);
     pcur_wlan->fixed = 0;

     pcur_sta = r8712_get_stainfo(pstapriv,
          cur_network->network.MacAddress);
     spin_lock_irqsave(&pstapriv->
      sta_hash_lock, irqL2);
     r8712_free_stainfo(adapter, pcur_sta);
     spin_unlock_irqrestore(&(pstapriv->
      sta_hash_lock), irqL2);

     ptarget_wlan =
       r8712_find_network(&pmlmepriv->
       scanned_queue,
       pnetwork->network.
       MacAddress);
     if (ptarget_wlan)
      ptarget_wlan->fixed = 1;
    }
   } else {
    ptarget_wlan = r8712_find_network(&pmlmepriv->
      scanned_queue,
      pnetwork->network.MacAddress);
    if (ptarget_wlan)
     ptarget_wlan->fixed = 1;
   }

   if (ptarget_wlan == ((void*)0)) {
    if (check_fwstate(pmlmepriv,
     _FW_UNDER_LINKING))
     pmlmepriv->fw_state ^=
       _FW_UNDER_LINKING;
    goto ignore_joinbss_callback;
   }


   if (check_fwstate(pmlmepriv, WIFI_STATION_STATE)) {
    if (the_same_macaddr) {
     ptarget_sta =
       r8712_get_stainfo(pstapriv,
       pnetwork->network.MacAddress);
     if (ptarget_sta == ((void*)0))
      ptarget_sta =
       r8712_alloc_stainfo(pstapriv,
       pnetwork->network.MacAddress);
    } else {
     ptarget_sta =
       r8712_alloc_stainfo(pstapriv,
       pnetwork->network.MacAddress);
    }
    if (ptarget_sta) {
     ptarget_sta->aid = pnetwork->join_res;
     ptarget_sta->qos_option = 1;
     ptarget_sta->mac_id = 5;
     if (adapter->securitypriv.
         AuthAlgrthm == 2) {
      adapter->securitypriv.
       binstallGrpkey =
        0;
      adapter->securitypriv.
       busetkipkey =
        0;
      adapter->securitypriv.
       bgrpkey_handshake =
        0;
      ptarget_sta->ieee8021x_blocked
        = 1;
      ptarget_sta->XPrivacy =
        adapter->securitypriv.
        PrivacyAlgrthm;
      memset((u8 *)&ptarget_sta->
        x_UncstKey,
        0,
        sizeof(union Keytype));
      memset((u8 *)&ptarget_sta->
        tkiprxmickey,
        0,
        sizeof(union Keytype));
      memset((u8 *)&ptarget_sta->
        tkiptxmickey,
        0,
        sizeof(union Keytype));
      memset((u8 *)&ptarget_sta->
        txpn, 0,
        sizeof(union pn48));
      memset((u8 *)&ptarget_sta->
        rxpn, 0,
        sizeof(union pn48));
     }
    } else {
     if (check_fwstate(pmlmepriv,
         _FW_UNDER_LINKING))
      pmlmepriv->fw_state ^=
        _FW_UNDER_LINKING;
     goto ignore_joinbss_callback;
    }
   }


   memcpy(&cur_network->network, &pnetwork->network,
    pnetwork->network.Length);
   cur_network->aid = pnetwork->join_res;

   switch (pnetwork->network.InfrastructureMode) {
   case 128:
    pmlmepriv->fw_state = WIFI_STATION_STATE;
    break;
   case 129:
    pmlmepriv->fw_state = WIFI_ADHOC_STATE;
    break;
   default:
    pmlmepriv->fw_state = WIFI_NULL_STATE;
    break;
   }
   r8712_update_protection(adapter,
       (cur_network->network.IEs) +
       sizeof(struct NDIS_802_11_FIXED_IEs),
       (cur_network->network.IELength));

   update_ht_cap(adapter, cur_network->network.IEs,
          cur_network->network.IELength);

   if (check_fwstate(pmlmepriv, WIFI_STATION_STATE))
    r8712_indicate_connect(adapter);
   del_timer(&pmlmepriv->assoc_timer);
  } else {
   goto ignore_joinbss_callback;
  }
 } else {
  if (check_fwstate(pmlmepriv, _FW_UNDER_LINKING)) {
   mod_timer(&pmlmepriv->assoc_timer,
      jiffies + msecs_to_jiffies(1));
   _clr_fwstate_(pmlmepriv, _FW_UNDER_LINKING);
  }
 }
ignore_joinbss_callback:
 spin_unlock_irqrestore(&pmlmepriv->lock, irqL);
 if (sizeof(struct list_head) == 4 * sizeof(u32))
  kfree(pnetwork);
}
