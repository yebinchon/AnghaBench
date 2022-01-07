
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {int DSConfig; } ;
struct TYPE_3__ {int SsidLength; unsigned char* Ssid; } ;
struct wlan_bssid_ex {unsigned char* IEs; int IELength; unsigned char* SupportedRates; TYPE_2__ Configuration; TYPE_1__ Ssid; } ;
struct ndis_802_11_fix_ie {int dummy; } ;
struct mlme_ext_info {int state; struct wlan_bssid_ex network; } ;
struct mlme_ext_priv {struct mlme_ext_info mlmext_info; } ;
struct ieee80211_hdr_3addr {int dummy; } ;
struct ieee80211_hdr {int* addr1; int* addr2; int* addr3; scalar_t__ frame_control; } ;
struct adapter {int eeprompriv; struct mlme_ext_priv mlmeextpriv; } ;
typedef scalar_t__ __le16 ;


 int DBG_871X (char*) ;
 int ETH_ALEN ;
 int SetFrameSubType (int*,int ) ;
 int SetSeqNum (struct ieee80211_hdr*,int ) ;
 int TXDESC_SIZE ;
 int WIFI_BEACON ;
 int WIFI_FW_ADHOC_STATE ;
 int WIFI_FW_AP_STATE ;
 int _DSSET_IE_ ;
 int _EXT_SUPPORTEDRATES_IE_ ;
 int _IBSS_PARA_IE_ ;
 int _SSID_IE_ ;
 int _SUPPORTEDRATES_IE_ ;
 unsigned char* get_my_bssid (struct wlan_bssid_ex*) ;
 int memcpy (int*,...) ;
 unsigned char* myid (int *) ;
 scalar_t__ rtw_get_beacon_interval_from_ie (unsigned char*) ;
 scalar_t__ rtw_get_capability_from_ie (unsigned char*) ;
 int rtw_get_rateset_len (unsigned char*) ;
 int* rtw_set_ie (int*,int ,int,unsigned char*,int*) ;

__attribute__((used)) static void ConstructBeacon(struct adapter *padapter, u8 *pframe, u32 *pLength)
{
 struct ieee80211_hdr *pwlanhdr;
 __le16 *fctrl;
 u32 rate_len, pktlen;
 struct mlme_ext_priv *pmlmeext = &(padapter->mlmeextpriv);
 struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
 struct wlan_bssid_ex *cur_network = &(pmlmeinfo->network);
 u8 bc_addr[] = {0xff, 0xff, 0xff, 0xff, 0xff, 0xff};




 pwlanhdr = (struct ieee80211_hdr *)pframe;

 fctrl = &(pwlanhdr->frame_control);
 *(fctrl) = 0;

 memcpy(pwlanhdr->addr1, bc_addr, ETH_ALEN);
 memcpy(pwlanhdr->addr2, myid(&(padapter->eeprompriv)), ETH_ALEN);
 memcpy(pwlanhdr->addr3, get_my_bssid(cur_network), ETH_ALEN);

 SetSeqNum(pwlanhdr, 0 );

 SetFrameSubType(pframe, WIFI_BEACON);

 pframe += sizeof(struct ieee80211_hdr_3addr);
 pktlen = sizeof (struct ieee80211_hdr_3addr);


 pframe += 8;
 pktlen += 8;


 memcpy(pframe, (unsigned char *)(rtw_get_beacon_interval_from_ie(cur_network->IEs)), 2);

 pframe += 2;
 pktlen += 2;


 memcpy(pframe, (unsigned char *)(rtw_get_capability_from_ie(cur_network->IEs)), 2);

 pframe += 2;
 pktlen += 2;

 if ((pmlmeinfo->state&0x03) == WIFI_FW_AP_STATE) {

  pktlen += cur_network->IELength - sizeof(struct ndis_802_11_fix_ie);
  memcpy(pframe, cur_network->IEs+sizeof(struct ndis_802_11_fix_ie), pktlen);

  goto _ConstructBeacon;
 }




 pframe = rtw_set_ie(pframe, _SSID_IE_, cur_network->Ssid.SsidLength, cur_network->Ssid.Ssid, &pktlen);


 rate_len = rtw_get_rateset_len(cur_network->SupportedRates);
 pframe = rtw_set_ie(pframe, _SUPPORTEDRATES_IE_, ((rate_len > 8) ? 8 : rate_len), cur_network->SupportedRates, &pktlen);


 pframe = rtw_set_ie(pframe, _DSSET_IE_, 1, (unsigned char *)&(cur_network->Configuration.DSConfig), &pktlen);

 if ((pmlmeinfo->state&0x03) == WIFI_FW_ADHOC_STATE) {
  u32 ATIMWindow;


  ATIMWindow = 0;
  pframe = rtw_set_ie(pframe, _IBSS_PARA_IE_, 2, (unsigned char *)(&ATIMWindow), &pktlen);
 }






 if (rate_len > 8)
  pframe = rtw_set_ie(pframe, _EXT_SUPPORTEDRATES_IE_, (rate_len - 8), (cur_network->SupportedRates + 8), &pktlen);




_ConstructBeacon:

 if ((pktlen + TXDESC_SIZE) > 512) {
  DBG_871X("beacon frame too large\n");
  return;
 }

 *pLength = pktlen;



}
