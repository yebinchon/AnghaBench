
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u16 ;


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

void hal_set_brate_cfg(u8 *brates, u16 *rate_cfg)
{
 u8 i, is_brate, brate;

 for (i = 0; i < NDIS_802_11_LENGTH_RATES_EX; i++) {
  is_brate = brates[i] & IEEE80211_BASIC_RATE_MASK;
  brate = brates[i] & 0x7f;

  if (is_brate) {
   switch (brate) {
   case 138:
    *rate_cfg |= RATE_1M;
    break;
   case 137:
    *rate_cfg |= RATE_2M;
    break;
   case 136:
    *rate_cfg |= RATE_5_5M;
    break;
   case 139:
    *rate_cfg |= RATE_11M;
    break;
   case 129:
    *rate_cfg |= RATE_6M;
    break;
   case 128:
    *rate_cfg |= RATE_9M;
    break;
   case 135:
    *rate_cfg |= RATE_12M;
    break;
   case 134:
    *rate_cfg |= RATE_18M;
    break;
   case 133:
    *rate_cfg |= RATE_24M;
    break;
   case 132:
    *rate_cfg |= RATE_36M;
    break;
   case 131:
    *rate_cfg |= RATE_48M;
    break;
   case 130:
    *rate_cfg |= RATE_54M;
    break;
   }
  }
 }
}
