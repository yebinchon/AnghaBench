
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int __le16 ;


 int EINVAL ;
 scalar_t__ WPA_OUI_TYPE ;
 int WPA_SELECTOR_LEN ;
 scalar_t__ _WPA_IE_ID_ ;
 int le16_to_cpu (int ) ;
 scalar_t__ memcmp (scalar_t__*,void*,int) ;
 int r8712_get_wpa_cipher_suite (scalar_t__*) ;

int r8712_parse_wpa_ie(u8 *wpa_ie, int wpa_ie_len, int *group_cipher,
         int *pairwise_cipher)
{
 int i;
 int left, count;
 u8 *pos;

 if (wpa_ie_len <= 0) {

  return -EINVAL;
 }
 if ((*wpa_ie != _WPA_IE_ID_) ||
     (*(wpa_ie + 1) != (u8)(wpa_ie_len - 2)) ||
     (memcmp(wpa_ie + 2, (void *)WPA_OUI_TYPE, WPA_SELECTOR_LEN)))
  return -EINVAL;
 pos = wpa_ie;
 pos += 8;
 left = wpa_ie_len - 8;

 if (left >= WPA_SELECTOR_LEN) {
  *group_cipher = r8712_get_wpa_cipher_suite(pos);
  pos += WPA_SELECTOR_LEN;
  left -= WPA_SELECTOR_LEN;
 } else if (left > 0) {
  return -EINVAL;
 }

 if (left >= 2) {
  count = le16_to_cpu(*(__le16 *)pos);
  pos += 2;
  left -= 2;
  if (count == 0 || left < count * WPA_SELECTOR_LEN)
   return -EINVAL;
  for (i = 0; i < count; i++) {
   *pairwise_cipher |= r8712_get_wpa_cipher_suite(pos);
   pos += WPA_SELECTOR_LEN;
   left -= WPA_SELECTOR_LEN;
  }
 } else if (left == 1) {
  return -EINVAL;
 }
 return 0;
}
