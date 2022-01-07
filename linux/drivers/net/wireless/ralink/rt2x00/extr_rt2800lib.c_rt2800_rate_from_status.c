
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct skb_frame_desc {int tx_rate_idx; int tx_rate_flags; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;


 int IEEE80211_TX_RC_40_MHZ_WIDTH ;
 int IEEE80211_TX_RC_GREEN_FIELD ;
 int IEEE80211_TX_RC_MCS ;
 int IEEE80211_TX_RC_SHORT_GI ;
 int NL80211_BAND_2GHZ ;




 int TX_STA_FIFO_BW ;
 int TX_STA_FIFO_MCS ;
 int TX_STA_FIFO_PHYMODE ;
 int TX_STA_FIFO_SGI ;
 int rt2x00_get_field32 (int ,int ) ;

__attribute__((used)) static void rt2800_rate_from_status(struct skb_frame_desc *skbdesc,
        u32 status, enum nl80211_band band)
{
 u8 flags = 0;
 u8 idx = rt2x00_get_field32(status, TX_STA_FIFO_MCS);

 switch (rt2x00_get_field32(status, TX_STA_FIFO_PHYMODE)) {
 case 130:
  flags |= IEEE80211_TX_RC_GREEN_FIELD;

 case 129:
  flags |= IEEE80211_TX_RC_MCS;
  break;
 case 128:
  if (band == NL80211_BAND_2GHZ)
   idx += 4;
  break;
 case 131:
  if (idx >= 8)
   idx -= 8;
  break;
 }

 if (rt2x00_get_field32(status, TX_STA_FIFO_BW))
  flags |= IEEE80211_TX_RC_40_MHZ_WIDTH;

 if (rt2x00_get_field32(status, TX_STA_FIFO_SGI))
  flags |= IEEE80211_TX_RC_SHORT_GI;

 skbdesc->tx_rate_idx = idx;
 skbdesc->tx_rate_flags = flags;
}
