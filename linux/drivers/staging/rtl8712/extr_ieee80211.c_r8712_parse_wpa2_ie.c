
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int __le16 ;


 int EINVAL ;
 int RSN_SELECTOR_LEN ;
 scalar_t__ _WPA2_IE_ID_ ;
 int le16_to_cpu (int ) ;
 int r8712_get_wpa2_cipher_suite (scalar_t__*) ;

int r8712_parse_wpa2_ie(u8 *rsn_ie, int rsn_ie_len, int *group_cipher,
   int *pairwise_cipher)
{
 int i;
 int left, count;
 u8 *pos;

 if (rsn_ie_len <= 0) {

  return -EINVAL;
 }
 if ((*rsn_ie != _WPA2_IE_ID_) ||
     (*(rsn_ie + 1) != (u8)(rsn_ie_len - 2)))
  return -EINVAL;
 pos = rsn_ie;
 pos += 4;
 left = rsn_ie_len - 4;

 if (left >= RSN_SELECTOR_LEN) {
  *group_cipher = r8712_get_wpa2_cipher_suite(pos);
  pos += RSN_SELECTOR_LEN;
  left -= RSN_SELECTOR_LEN;
 } else if (left > 0) {
  return -EINVAL;
 }

 if (left >= 2) {
  count = le16_to_cpu(*(__le16 *)pos);
  pos += 2;
  left -= 2;
  if (count == 0 || left < count * RSN_SELECTOR_LEN)
   return -EINVAL;
  for (i = 0; i < count; i++) {
   *pairwise_cipher |= r8712_get_wpa2_cipher_suite(pos);
   pos += RSN_SELECTOR_LEN;
   left -= RSN_SELECTOR_LEN;
  }
 } else if (left == 1) {
  return -EINVAL;
 }
 return 0;
}
