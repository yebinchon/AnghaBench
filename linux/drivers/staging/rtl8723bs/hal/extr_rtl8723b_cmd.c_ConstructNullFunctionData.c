
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct TYPE_2__ {int InfrastructureMode; } ;
struct wlan_network {TYPE_1__ network; } ;
struct mlme_priv {struct wlan_network cur_network; } ;
struct mlme_ext_info {int network; } ;
struct mlme_ext_priv {struct mlme_ext_info mlmext_info; } ;
struct ieee80211_qos_hdr {int qos_ctrl; } ;
struct ieee80211_hdr_3addr {int dummy; } ;
struct ieee80211_hdr {int addr3; int addr2; int addr1; scalar_t__ frame_control; } ;
struct adapter {int eeprompriv; struct mlme_ext_priv mlmeextpriv; struct mlme_priv mlmepriv; } ;
typedef scalar_t__ __le16 ;


 int ETH_ALEN ;



 int SetEOSP (int *,scalar_t__) ;
 int SetFrDs (scalar_t__*) ;
 int SetFrameSubType (scalar_t__*,int ) ;
 int SetPriority (int *,scalar_t__) ;
 int SetPwrMgt (scalar_t__*) ;
 int SetSeqNum (struct ieee80211_hdr*,int ) ;
 int SetToDs (scalar_t__*) ;
 int WIFI_DATA_NULL ;
 int WIFI_QOS_DATA_NULL ;
 scalar_t__* get_my_bssid (int *) ;
 int memcpy (int ,scalar_t__*,int ) ;
 scalar_t__* myid (int *) ;

__attribute__((used)) static void ConstructNullFunctionData(
 struct adapter *padapter,
 u8 *pframe,
 u32 *pLength,
 u8 *StaAddr,
 u8 bQoS,
 u8 AC,
 u8 bEosp,
 u8 bForcePowerSave
)
{
 struct ieee80211_hdr *pwlanhdr;
 __le16 *fctrl;
 u32 pktlen;
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 struct wlan_network *cur_network = &pmlmepriv->cur_network;
 struct mlme_ext_priv *pmlmeext = &(padapter->mlmeextpriv);
 struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);




 pwlanhdr = (struct ieee80211_hdr *)pframe;

 fctrl = &pwlanhdr->frame_control;
 *(fctrl) = 0;
 if (bForcePowerSave)
  SetPwrMgt(fctrl);

 switch (cur_network->network.InfrastructureMode) {
 case 128:
  SetToDs(fctrl);
  memcpy(pwlanhdr->addr1, get_my_bssid(&(pmlmeinfo->network)), ETH_ALEN);
  memcpy(pwlanhdr->addr2, myid(&(padapter->eeprompriv)), ETH_ALEN);
  memcpy(pwlanhdr->addr3, StaAddr, ETH_ALEN);
  break;
 case 130:
  SetFrDs(fctrl);
  memcpy(pwlanhdr->addr1, StaAddr, ETH_ALEN);
  memcpy(pwlanhdr->addr2, get_my_bssid(&(pmlmeinfo->network)), ETH_ALEN);
  memcpy(pwlanhdr->addr3, myid(&(padapter->eeprompriv)), ETH_ALEN);
  break;
 case 129:
 default:
  memcpy(pwlanhdr->addr1, StaAddr, ETH_ALEN);
  memcpy(pwlanhdr->addr2, myid(&(padapter->eeprompriv)), ETH_ALEN);
  memcpy(pwlanhdr->addr3, get_my_bssid(&(pmlmeinfo->network)), ETH_ALEN);
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
