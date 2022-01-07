
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef size_t u32 ;


 size_t IEEE80211_BASIC_RATE_MASK ;





void UpdateBrateTblForSoftAP(u8 *bssrateset, u32 bssratelen)
{
 u8 i;
 u8 rate;

 for (i = 0; i < bssratelen; i++) {
  rate = bssrateset[i] & 0x7f;
  switch (rate) {
  case 130:
  case 129:
  case 128:
  case 131:
   bssrateset[i] |= IEEE80211_BASIC_RATE_MASK;
   break;
  }
 }
}
