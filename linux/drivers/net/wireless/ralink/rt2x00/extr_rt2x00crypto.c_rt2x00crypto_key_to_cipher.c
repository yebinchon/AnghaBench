
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_key_conf {int cipher; } ;
typedef enum cipher { ____Placeholder_cipher } cipher ;


 int CIPHER_AES ;
 int CIPHER_NONE ;
 int CIPHER_TKIP ;
 int CIPHER_WEP128 ;
 int CIPHER_WEP64 ;





enum cipher rt2x00crypto_key_to_cipher(struct ieee80211_key_conf *key)
{
 switch (key->cipher) {
 case 128:
  return CIPHER_WEP64;
 case 129:
  return CIPHER_WEP128;
 case 130:
  return CIPHER_TKIP;
 case 131:
  return CIPHER_AES;
 default:
  return CIPHER_NONE;
 }
}
