
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u16 ;
struct adapter {int dummy; } ;


 size_t IEEE80211_BASIC_RATE_MASK ;
 size_t NDIS_802_11_LENGTH_RATES_EX ;
 int RATE_11M ;
 int RATE_12M ;
 int RATE_18M ;
 int RATE_1M ;
 int RATE_24M ;
 int RATE_2M ;
 int RATE_36M ;
 int RATE_48M ;
 int RATE_54M ;
 int RATE_5_5M ;
 int RATE_6M ;
 int RATE_9M ;

void HalSetBrateCfg(struct adapter *Adapter, u8 *mBratesOS, u16 *pBrateCfg)
{
 u8 i, is_brate, brate;

 for (i = 0; i < NDIS_802_11_LENGTH_RATES_EX; i++) {

  is_brate = mBratesOS[i] & IEEE80211_BASIC_RATE_MASK;
  brate = mBratesOS[i] & 0x7f;

  if (is_brate) {
   switch (brate) {
   case 138:
    *pBrateCfg |= RATE_1M;
    break;
   case 137:
    *pBrateCfg |= RATE_2M;
    break;
   case 136:
    *pBrateCfg |= RATE_5_5M;
    break;
   case 139:
    *pBrateCfg |= RATE_11M;
    break;
   case 129:
    *pBrateCfg |= RATE_6M;
    break;
   case 128:
    *pBrateCfg |= RATE_9M;
    break;
   case 135:
    *pBrateCfg |= RATE_12M;
    break;
   case 134:
    *pBrateCfg |= RATE_18M;
    break;
   case 133:
    *pBrateCfg |= RATE_24M;
    break;
   case 132:
    *pBrateCfg |= RATE_36M;
    break;
   case 131:
    *pBrateCfg |= RATE_48M;
    break;
   case 130:
    *pBrateCfg |= RATE_54M;
    break;
   }
  }
 }
}
