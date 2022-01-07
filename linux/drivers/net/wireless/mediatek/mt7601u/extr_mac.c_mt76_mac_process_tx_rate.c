
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ieee80211_tx_rate {int idx; int count; int flags; } ;


 int FIELD_GET (int ,int) ;
 int IEEE80211_TX_RC_40_MHZ_WIDTH ;
 int IEEE80211_TX_RC_GREEN_FIELD ;
 int IEEE80211_TX_RC_MCS ;
 int IEEE80211_TX_RC_SHORT_GI ;
 int MT_PHY_BW_40 ;




 int MT_TXWI_RATE_BW ;
 int MT_TXWI_RATE_MCS ;
 int MT_TXWI_RATE_PHY_MODE ;
 int MT_TXWI_RATE_SGI ;
 int WARN_ON (int) ;

__attribute__((used)) static void
mt76_mac_process_tx_rate(struct ieee80211_tx_rate *txrate, u16 rate)
{
 u8 idx = FIELD_GET(MT_TXWI_RATE_MCS, rate);

 txrate->idx = 0;
 txrate->flags = 0;
 txrate->count = 1;

 switch (FIELD_GET(MT_TXWI_RATE_PHY_MODE, rate)) {
 case 128:
  txrate->idx = idx + 4;
  return;
 case 131:
  if (idx >= 8)
   idx -= 8;

  txrate->idx = idx;
  return;
 case 129:
  txrate->flags |= IEEE80211_TX_RC_GREEN_FIELD;

 case 130:
  txrate->flags |= IEEE80211_TX_RC_MCS;
  txrate->idx = idx;
  break;
 default:
  WARN_ON(1);
  return;
 }

 if (FIELD_GET(MT_TXWI_RATE_BW, rate) == MT_PHY_BW_40)
  txrate->flags |= IEEE80211_TX_RC_40_MHZ_WIDTH;

 if (rate & MT_TXWI_RATE_SGI)
  txrate->flags |= IEEE80211_TX_RC_SHORT_GI;
}
