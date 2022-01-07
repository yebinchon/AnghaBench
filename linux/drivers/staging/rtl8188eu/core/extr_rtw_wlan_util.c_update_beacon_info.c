
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u8 ;
struct sta_info {int dummy; } ;
struct ndis_802_11_var_ie {int ElementID; scalar_t__ Length; } ;
struct adapter {int dummy; } ;


 int ERP_IE_handler (struct adapter*,struct ndis_802_11_var_ie*) ;
 int VCS_update (struct adapter*,struct sta_info*) ;
 int WLAN_HDR_A3_LEN ;
 int _BEACON_IE_OFFSET_ ;


 int bwmode_update_check (struct adapter*,struct ndis_802_11_var_ie*) ;

void update_beacon_info(struct adapter *padapter, u8 *pframe, uint pkt_len, struct sta_info *psta)
{
 unsigned int i;
 unsigned int len;
 struct ndis_802_11_var_ie *pIE;

 len = pkt_len - (_BEACON_IE_OFFSET_ + WLAN_HDR_A3_LEN);

 for (i = 0; i < len;) {
  pIE = (struct ndis_802_11_var_ie *)(pframe + (_BEACON_IE_OFFSET_ + WLAN_HDR_A3_LEN) + i);

  switch (pIE->ElementID) {
  case 128:
   bwmode_update_check(padapter, pIE);
   break;
  case 129:
   ERP_IE_handler(padapter, pIE);
   VCS_update(padapter, psta);
   break;
  default:
   break;
  }

  i += (pIE->Length + 2);
 }
}
