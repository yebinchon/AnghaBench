
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mlme_ext_info {int aid; int network; } ;
struct mlme_ext_priv {struct mlme_ext_info mlmext_info; } ;
struct ieee80211_hdr {int addr2; int addr1; scalar_t__ frame_control; } ;
struct adapter {int eeprompriv; struct mlme_ext_priv mlmeextpriv; } ;
typedef scalar_t__ __le16 ;


 int ETH_ALEN ;
 int SetDuration (int *,int) ;
 int SetFrameSubType (int *,int ) ;
 int SetPwrMgt (scalar_t__*) ;
 int WIFI_PSPOLL ;
 int get_my_bssid (int *) ;
 int memcpy (int ,int ,int ) ;
 int myid (int *) ;

__attribute__((used)) static void ConstructPSPoll(struct adapter *padapter, u8 *pframe, u32 *pLength)
{
 struct ieee80211_hdr *pwlanhdr;
 __le16 *fctrl;
 struct mlme_ext_priv *pmlmeext = &(padapter->mlmeextpriv);
 struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);



 pwlanhdr = (struct ieee80211_hdr *)pframe;


 fctrl = &(pwlanhdr->frame_control);
 *(fctrl) = 0;
 SetPwrMgt(fctrl);
 SetFrameSubType(pframe, WIFI_PSPOLL);


 SetDuration(pframe, (pmlmeinfo->aid | 0xc000));


 memcpy(pwlanhdr->addr1, get_my_bssid(&(pmlmeinfo->network)), ETH_ALEN);


 memcpy(pwlanhdr->addr2, myid(&(padapter->eeprompriv)), ETH_ALEN);

 *pLength = 16;
}
