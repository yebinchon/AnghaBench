
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct TYPE_2__ {int InfrastructureMode; } ;
struct wlan_network {TYPE_1__ network; } ;
struct wlan_bssid_ex {scalar_t__* MacAddress; } ;
struct mlme_priv {struct wlan_network cur_network; } ;
struct mlme_ext_info {struct wlan_bssid_ex network; } ;
struct mlme_ext_priv {struct mlme_ext_info mlmext_info; } ;
struct ieee80211_qos_hdr {int qos_ctrl; } ;
struct ieee80211_hdr_3addr {int dummy; } ;
struct ieee80211_hdr {int addr3; int addr2; int addr1; scalar_t__ frame_control; } ;
struct adapter {int eeprompriv; struct mlme_ext_priv mlmeextpriv; struct mlme_priv mlmepriv; } ;
typedef scalar_t__ __le16 ;





 int SetEOSP (int *,scalar_t__) ;
 int SetFrDs (scalar_t__*) ;
 int SetFrameSubType (scalar_t__*,int ) ;
 int SetPriority (int *,scalar_t__) ;
 int SetPwrMgt (scalar_t__*) ;
 int SetSeqNum (struct ieee80211_hdr*,int ) ;
 int SetToDs (scalar_t__*) ;
 int WIFI_DATA_NULL ;
 int WIFI_QOS_DATA_NULL ;
 int ether_addr_copy (int ,scalar_t__*) ;
 scalar_t__* myid (int *) ;

__attribute__((used)) static void ConstructNullFunctionData(struct adapter *adapt, u8 *pframe,
 u32 *pLength,
 u8 *StaAddr,
 u8 bQoS,
 u8 AC,
 u8 bEosp,
 u8 bForcePowerSave)
{
 struct ieee80211_hdr *pwlanhdr;
 __le16 *fctrl;
 u32 pktlen;
 struct mlme_priv *pmlmepriv = &adapt->mlmepriv;
 struct wlan_network *cur_network = &pmlmepriv->cur_network;
 struct mlme_ext_priv *pmlmeext = &adapt->mlmeextpriv;
 struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
 struct wlan_bssid_ex *pnetwork = &pmlmeinfo->network;

 pwlanhdr = (struct ieee80211_hdr *)pframe;

 fctrl = &pwlanhdr->frame_control;
 *(fctrl) = 0;
 if (bForcePowerSave)
  SetPwrMgt(fctrl);

 switch (cur_network->network.InfrastructureMode) {
 case 128:
  SetToDs(fctrl);
  ether_addr_copy(pwlanhdr->addr1, pnetwork->MacAddress);
  ether_addr_copy(pwlanhdr->addr2, myid(&adapt->eeprompriv));
  ether_addr_copy(pwlanhdr->addr3, StaAddr);
  break;
 case 130:
  SetFrDs(fctrl);
  ether_addr_copy(pwlanhdr->addr1, StaAddr);
  ether_addr_copy(pwlanhdr->addr2, pnetwork->MacAddress);
  ether_addr_copy(pwlanhdr->addr3, myid(&adapt->eeprompriv));
  break;
 case 129:
 default:
  ether_addr_copy(pwlanhdr->addr1, StaAddr);
  ether_addr_copy(pwlanhdr->addr2, myid(&adapt->eeprompriv));
  ether_addr_copy(pwlanhdr->addr3, pnetwork->MacAddress);
  break;
 }

 SetSeqNum(pwlanhdr, 0);

 if (bQoS) {
  struct ieee80211_qos_hdr *pwlanqoshdr;

  SetFrameSubType(pframe, WIFI_QOS_DATA_NULL);

  pwlanqoshdr = (struct ieee80211_qos_hdr *)pframe;
  SetPriority(&pwlanqoshdr->qos_ctrl, AC);
  SetEOSP(&pwlanqoshdr->qos_ctrl, bEosp);

  pktlen = sizeof(struct ieee80211_qos_hdr);
 } else {
  SetFrameSubType(pframe, WIFI_DATA_NULL);

  pktlen = sizeof(struct ieee80211_hdr_3addr);
 }

 *pLength = pktlen;
}
