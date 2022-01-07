
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ RSN_CIPHER_SUITE_CCMP ;
 scalar_t__ RSN_CIPHER_SUITE_NONE ;
 scalar_t__ RSN_CIPHER_SUITE_TKIP ;
 scalar_t__ RSN_CIPHER_SUITE_WEP104 ;
 scalar_t__ RSN_CIPHER_SUITE_WEP40 ;
 int RSN_SELECTOR_LEN ;
 int WPA_CIPHER_CCMP ;
 int WPA_CIPHER_NONE ;
 int WPA_CIPHER_TKIP ;
 int WPA_CIPHER_WEP104 ;
 int WPA_CIPHER_WEP40 ;
 int memcmp (int *,void*,int ) ;

__attribute__((used)) static int r8712_get_wpa2_cipher_suite(u8 *s)
{
 if (!memcmp(s, (void *)RSN_CIPHER_SUITE_NONE, RSN_SELECTOR_LEN))
  return WPA_CIPHER_NONE;
 if (!memcmp(s, (void *)RSN_CIPHER_SUITE_WEP40, RSN_SELECTOR_LEN))
  return WPA_CIPHER_WEP40;
 if (!memcmp(s, (void *)RSN_CIPHER_SUITE_TKIP, RSN_SELECTOR_LEN))
  return WPA_CIPHER_TKIP;
 if (!memcmp(s, (void *)RSN_CIPHER_SUITE_CCMP, RSN_SELECTOR_LEN))
  return WPA_CIPHER_CCMP;
 if (!memcmp(s, (void *)RSN_CIPHER_SUITE_WEP104, RSN_SELECTOR_LEN))
  return WPA_CIPHER_WEP104;
 return 0;
}
