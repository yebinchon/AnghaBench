
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wlan_bssid_ex {int MacAddress; } ;
struct mlme_ext_info {int aid; struct wlan_bssid_ex network; } ;
struct mlme_ext_priv {struct mlme_ext_info mlmext_info; } ;
struct ieee80211_hdr {int addr2; int addr1; scalar_t__ frame_control; } ;
struct adapter {int eeprompriv; struct mlme_ext_priv mlmeextpriv; } ;
typedef scalar_t__ __le16 ;


 int SetDuration (int *,int) ;
 int SetFrameSubType (int *,int ) ;
 int SetPwrMgt (scalar_t__*) ;
 int WIFI_PSPOLL ;
 int ether_addr_copy (int ,int ) ;
 int myid (int *) ;

__attribute__((used)) static void ConstructPSPoll(struct adapter *adapt, u8 *pframe, u32 *pLength)
{
 struct ieee80211_hdr *pwlanhdr;
 struct mlme_ext_priv *pmlmeext = &adapt->mlmeextpriv;
 struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
 __le16 *fctrl;
 struct wlan_bssid_ex *pnetwork = &pmlmeinfo->network;

 pwlanhdr = (struct ieee80211_hdr *)pframe;


 fctrl = &pwlanhdr->frame_control;
 *(fctrl) = 0;
 SetPwrMgt(fctrl);
 SetFrameSubType(pframe, WIFI_PSPOLL);


 SetDuration(pframe, (pmlmeinfo->aid | 0xc000));


 ether_addr_copy(pwlanhdr->addr1, pnetwork->MacAddress);


 ether_addr_copy(pwlanhdr->addr2, myid(&adapt->eeprompriv));

 *pLength = 16;
}
