
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u8 ;
struct sta_info {int dummy; } ;
struct ndis_80211_var_ie {int ElementID; scalar_t__ Length; int data; } ;
struct adapter {int dummy; } ;


 int ERP_IE_handler (struct adapter*,struct ndis_80211_var_ie*) ;
 int VCS_update (struct adapter*,struct sta_info*) ;
 int WLAN_HDR_A3_LEN ;
 scalar_t__ WLAN_WMM_LEN ;
 int WMM_PARA_OUI ;
 int WMM_param_handler (struct adapter*,struct ndis_80211_var_ie*) ;
 int _BEACON_IE_OFFSET_ ;



 int bwmode_update_check (struct adapter*,struct ndis_80211_var_ie*) ;
 int memcmp (int ,int ,int) ;
 int report_wmm_edca_update (struct adapter*) ;

void update_beacon_info(struct adapter *padapter, u8 *pframe, uint pkt_len, struct sta_info *psta)
{
 unsigned int i;
 unsigned int len;
 struct ndis_80211_var_ie *pIE;

 len = pkt_len - (_BEACON_IE_OFFSET_ + WLAN_HDR_A3_LEN);

 for (i = 0; i < len;) {
  pIE = (struct ndis_80211_var_ie *)(pframe + (_BEACON_IE_OFFSET_ + WLAN_HDR_A3_LEN) + i);

  switch (pIE->ElementID) {
  case 128:

   if (!memcmp(pIE->data, WMM_PARA_OUI, 6) && pIE->Length == WLAN_WMM_LEN)
    if (WMM_param_handler(padapter, pIE))
     report_wmm_edca_update(padapter);

   break;

  case 129:

   bwmode_update_check(padapter, pIE);
   break;

  case 130:
   ERP_IE_handler(padapter, pIE);
   VCS_update(padapter, psta);
   break;

  default:
   break;
  }

  i += (pIE->Length + 2);
 }
}
