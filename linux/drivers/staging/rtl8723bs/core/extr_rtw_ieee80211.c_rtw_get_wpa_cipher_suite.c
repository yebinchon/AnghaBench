
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int WPA_CIPHER_CCMP ;
 int WPA_CIPHER_NONE ;
 int WPA_CIPHER_SUITE_CCMP ;
 int WPA_CIPHER_SUITE_NONE ;
 int WPA_CIPHER_SUITE_TKIP ;
 int WPA_CIPHER_SUITE_WEP104 ;
 int WPA_CIPHER_SUITE_WEP40 ;
 int WPA_CIPHER_TKIP ;
 int WPA_CIPHER_WEP104 ;
 int WPA_CIPHER_WEP40 ;
 int WPA_SELECTOR_LEN ;
 int memcmp (int *,int ,int ) ;

int rtw_get_wpa_cipher_suite(u8 *s)
{
 if (!memcmp(s, WPA_CIPHER_SUITE_NONE, WPA_SELECTOR_LEN))
  return WPA_CIPHER_NONE;
 if (!memcmp(s, WPA_CIPHER_SUITE_WEP40, WPA_SELECTOR_LEN))
  return WPA_CIPHER_WEP40;
 if (!memcmp(s, WPA_CIPHER_SUITE_TKIP, WPA_SELECTOR_LEN))
  return WPA_CIPHER_TKIP;
 if (!memcmp(s, WPA_CIPHER_SUITE_CCMP, WPA_SELECTOR_LEN))
  return WPA_CIPHER_CCMP;
 if (!memcmp(s, WPA_CIPHER_SUITE_WEP104, WPA_SELECTOR_LEN))
  return WPA_CIPHER_WEP104;

 return 0;
}
