
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct adapter {int dummy; } ;


 size_t IEEE80211_BASIC_RATE_MASK ;







 size_t NDIS_802_11_LENGTH_RATES_EX ;

void UpdateBrateTbl(struct adapter *Adapter, u8 *mBratesOS)
{
 u8 i;
 u8 rate;


 for (i = 0; i < NDIS_802_11_LENGTH_RATES_EX; i++) {
  rate = mBratesOS[i] & 0x7f;
  switch (rate) {
  case 133:
  case 132:
  case 131:
  case 134:
  case 128:
  case 130:
  case 129:
   mBratesOS[i] |= IEEE80211_BASIC_RATE_MASK;
   break;
  }
 }
}
