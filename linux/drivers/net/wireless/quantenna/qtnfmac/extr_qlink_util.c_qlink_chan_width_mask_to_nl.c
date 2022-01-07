
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int BIT (int ) ;
 int NL80211_CHAN_WIDTH_10 ;
 int NL80211_CHAN_WIDTH_160 ;
 int NL80211_CHAN_WIDTH_20 ;
 int NL80211_CHAN_WIDTH_20_NOHT ;
 int NL80211_CHAN_WIDTH_40 ;
 int NL80211_CHAN_WIDTH_5 ;
 int NL80211_CHAN_WIDTH_80 ;
 int NL80211_CHAN_WIDTH_80P80 ;
 int QLINK_CHAN_WIDTH_10 ;
 int QLINK_CHAN_WIDTH_160 ;
 int QLINK_CHAN_WIDTH_20 ;
 int QLINK_CHAN_WIDTH_20_NOHT ;
 int QLINK_CHAN_WIDTH_40 ;
 int QLINK_CHAN_WIDTH_5 ;
 int QLINK_CHAN_WIDTH_80 ;
 int QLINK_CHAN_WIDTH_80P80 ;

u8 qlink_chan_width_mask_to_nl(u16 qlink_mask)
{
 u8 result = 0;

 if (qlink_mask & BIT(QLINK_CHAN_WIDTH_5))
  result |= BIT(NL80211_CHAN_WIDTH_5);

 if (qlink_mask & BIT(QLINK_CHAN_WIDTH_10))
  result |= BIT(NL80211_CHAN_WIDTH_10);

 if (qlink_mask & BIT(QLINK_CHAN_WIDTH_20_NOHT))
  result |= BIT(NL80211_CHAN_WIDTH_20_NOHT);

 if (qlink_mask & BIT(QLINK_CHAN_WIDTH_20))
  result |= BIT(NL80211_CHAN_WIDTH_20);

 if (qlink_mask & BIT(QLINK_CHAN_WIDTH_40))
  result |= BIT(NL80211_CHAN_WIDTH_40);

 if (qlink_mask & BIT(QLINK_CHAN_WIDTH_80))
  result |= BIT(NL80211_CHAN_WIDTH_80);

 if (qlink_mask & BIT(QLINK_CHAN_WIDTH_80P80))
  result |= BIT(NL80211_CHAN_WIDTH_80P80);

 if (qlink_mask & BIT(QLINK_CHAN_WIDTH_160))
  result |= BIT(NL80211_CHAN_WIDTH_160);

 return result;
}
