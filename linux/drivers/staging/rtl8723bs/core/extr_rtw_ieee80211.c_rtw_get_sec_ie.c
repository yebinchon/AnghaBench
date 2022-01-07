
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint ;
typedef int u8 ;
typedef int u16 ;


 int RT_TRACE (int ,int ,char*) ;
 size_t _BEACON_ITERVAL_ ;
 size_t _CAPABILITY_ ;
 size_t _TIMESTAMP_ ;
 int _WPA2_IE_ID_ ;
 int _WPA_IE_ID_ ;
 int _drv_info_ ;
 int _module_rtl871x_mlme_c_ ;
 int memcmp (int*,int*,int) ;
 int memcpy (int*,int*,int) ;

void rtw_get_sec_ie(u8 *in_ie, uint in_len, u8 *rsn_ie, u16 *rsn_len, u8 *wpa_ie, u16 *wpa_len)
{
 u8 authmode, sec_idx, i;
 u8 wpa_oui[4] = {0x0, 0x50, 0xf2, 0x01};
 uint cnt;



 cnt = (_TIMESTAMP_ + _BEACON_ITERVAL_ + _CAPABILITY_);

 sec_idx = 0;

 while (cnt < in_len) {
  authmode = in_ie[cnt];

  if ((authmode == _WPA_IE_ID_) && (!memcmp(&in_ie[cnt+2], &wpa_oui[0], 4))) {
    RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("\n rtw_get_wpa_ie: sec_idx =%d in_ie[cnt+1]+2 =%d\n", sec_idx, in_ie[cnt+1]+2));

    if (wpa_ie) {
    memcpy(wpa_ie, &in_ie[cnt], in_ie[cnt+1]+2);

    for (i = 0; i < (in_ie[cnt+1]+2); i = i+8) {
      RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("\n %2x,%2x,%2x,%2x,%2x,%2x,%2x,%2x\n",
         wpa_ie[i], wpa_ie[i+1], wpa_ie[i+2], wpa_ie[i+3], wpa_ie[i+4],
         wpa_ie[i+5], wpa_ie[i+6], wpa_ie[i+7]));
     }
    }

    *wpa_len = in_ie[cnt+1]+2;
    cnt += in_ie[cnt+1]+2;
  } else {
   if (authmode == _WPA2_IE_ID_) {
    RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("\n get_rsn_ie: sec_idx =%d in_ie[cnt+1]+2 =%d\n", sec_idx, in_ie[cnt+1]+2));

    if (rsn_ie) {
    memcpy(rsn_ie, &in_ie[cnt], in_ie[cnt+1]+2);

    for (i = 0; i < (in_ie[cnt+1]+2); i = i+8) {
      RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("\n %2x,%2x,%2x,%2x,%2x,%2x,%2x,%2x\n",
         rsn_ie[i], rsn_ie[i+1], rsn_ie[i+2], rsn_ie[i+3], rsn_ie[i+4],
         rsn_ie[i+5], rsn_ie[i+6], rsn_ie[i+7]));
     }
    }

    *rsn_len = in_ie[cnt+1]+2;
    cnt += in_ie[cnt+1]+2;
   } else {
    cnt += in_ie[cnt+1]+2;
   }
  }
 }
}
