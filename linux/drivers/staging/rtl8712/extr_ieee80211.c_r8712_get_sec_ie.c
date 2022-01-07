
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint ;
typedef int u8 ;
typedef int u16 ;


 size_t _BEACON_ITERVAL_ ;
 size_t _CAPABILITY_ ;
 size_t _TIMESTAMP_ ;
 int _WPA2_IE_ID_ ;
 int _WPA_IE_ID_ ;
 int memcmp (int*,int*,int) ;
 int memcpy (int*,int*,int) ;

int r8712_get_sec_ie(u8 *in_ie, uint in_len, u8 *rsn_ie, u16 *rsn_len,
       u8 *wpa_ie, u16 *wpa_len)
{
 u8 authmode;
 u8 wpa_oui[4] = {0x0, 0x50, 0xf2, 0x01};
 uint cnt;


 cnt = _TIMESTAMP_ + _BEACON_ITERVAL_ + _CAPABILITY_;
 while (cnt < in_len) {
  authmode = in_ie[cnt];
  if ((authmode == _WPA_IE_ID_) &&
      (!memcmp(&in_ie[cnt + 2], &wpa_oui[0], 4))) {
   memcpy(wpa_ie, &in_ie[cnt], in_ie[cnt + 1] + 2);
   *wpa_len = in_ie[cnt + 1] + 2;
   cnt += in_ie[cnt + 1] + 2;
  } else {
   if (authmode == _WPA2_IE_ID_) {
    memcpy(rsn_ie, &in_ie[cnt],
           in_ie[cnt + 1] + 2);
    *rsn_len = in_ie[cnt + 1] + 2;
    cnt += in_ie[cnt + 1] + 2;
   } else {
    cnt += in_ie[cnt + 1] + 2;
   }
  }
 }
 return *rsn_len + *wpa_len;
}
