
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_key_conf {int dummy; } ;
typedef enum cipher { ____Placeholder_cipher } cipher ;


 int CIPHER_NONE ;

__attribute__((used)) static inline enum cipher rt2x00crypto_key_to_cipher(struct ieee80211_key_conf *key)
{
 return CIPHER_NONE;
}
