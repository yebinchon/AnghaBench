
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int RSN_CIPHER_SUITE_CCMP ;
 int RSN_CIPHER_SUITE_NONE ;
 int RSN_CIPHER_SUITE_TKIP ;
 int RSN_CIPHER_SUITE_WEP104 ;
 int RSN_CIPHER_SUITE_WEP40 ;
 int RSN_SELECTOR_LEN ;
 int WPA_CIPHER_CCMP ;
 int WPA_CIPHER_NONE ;
 int WPA_CIPHER_TKIP ;
 int WPA_CIPHER_WEP104 ;
 int WPA_CIPHER_WEP40 ;
 int memcmp (int *,int ,int ) ;

int rtw_get_wpa2_cipher_suite(u8 *s)
{
 if (!memcmp(s, RSN_CIPHER_SUITE_NONE, RSN_SELECTOR_LEN))
  return WPA_CIPHER_NONE;
 if (!memcmp(s, RSN_CIPHER_SUITE_WEP40, RSN_SELECTOR_LEN))
  return WPA_CIPHER_WEP40;
 if (!memcmp(s, RSN_CIPHER_SUITE_TKIP, RSN_SELECTOR_LEN))
  return WPA_CIPHER_TKIP;
 if (!memcmp(s, RSN_CIPHER_SUITE_CCMP, RSN_SELECTOR_LEN))
  return WPA_CIPHER_CCMP;
 if (!memcmp(s, RSN_CIPHER_SUITE_WEP104, RSN_SELECTOR_LEN))
  return WPA_CIPHER_WEP104;

 return 0;
}
