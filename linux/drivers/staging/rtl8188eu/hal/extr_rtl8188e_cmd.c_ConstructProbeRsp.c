
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wlan_bssid_ex {scalar_t__ ie_length; int ies; int * MacAddress; } ;
struct mlme_ext_info {struct wlan_bssid_ex network; } ;
struct mlme_ext_priv {struct mlme_ext_info mlmext_info; } ;
struct ieee80211_hdr_3addr {int dummy; } ;
struct ieee80211_hdr {int addr3; int addr2; int addr1; scalar_t__ frame_control; } ;
struct adapter {int eeprompriv; struct mlme_ext_priv mlmeextpriv; } ;
typedef scalar_t__ __le16 ;


 scalar_t__ MAX_IE_SZ ;
 int SetFrameSubType (scalar_t__*,int ) ;
 int SetSeqNum (struct ieee80211_hdr*,int ) ;
 int WIFI_PROBERSP ;
 int ether_addr_copy (int ,int *) ;
 int memcpy (int *,int ,scalar_t__) ;
 int * myid (int *) ;

__attribute__((used)) static void ConstructProbeRsp(struct adapter *adapt, u8 *pframe, u32 *pLength, u8 *StaAddr, bool bHideSSID)
{
 struct ieee80211_hdr *pwlanhdr;
 __le16 *fctrl;
 u8 *mac, *bssid;
 u32 pktlen;
 struct mlme_ext_priv *pmlmeext = &adapt->mlmeextpriv;
 struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
 struct wlan_bssid_ex *cur_network = &pmlmeinfo->network;

 pwlanhdr = (struct ieee80211_hdr *)pframe;

 mac = myid(&adapt->eeprompriv);
 bssid = cur_network->MacAddress;

 fctrl = &pwlanhdr->frame_control;
 *(fctrl) = 0;
 ether_addr_copy(pwlanhdr->addr1, StaAddr);
 ether_addr_copy(pwlanhdr->addr2, mac);
 ether_addr_copy(pwlanhdr->addr3, bssid);

 SetSeqNum(pwlanhdr, 0);
 SetFrameSubType(fctrl, WIFI_PROBERSP);

 pktlen = sizeof(struct ieee80211_hdr_3addr);
 pframe += pktlen;

 if (cur_network->ie_length > MAX_IE_SZ)
  return;

 memcpy(pframe, cur_network->ies, cur_network->ie_length);
 pframe += cur_network->ie_length;
 pktlen += cur_network->ie_length;

 *pLength = pktlen;
}
