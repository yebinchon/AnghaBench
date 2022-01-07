
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct txdone_entry_desc {int retry; int flags; } ;
struct skb_frame_desc {int tx_rate_idx; int tx_rate_flags; } ;
struct TYPE_5__ {int dot11RTSFailureCount; int dot11RTSSuccessCount; int dot11ACKFailureCount; } ;
struct rt2x00_dev {TYPE_2__ low_level_stats; } ;
struct TYPE_6__ {int ampdu_len; int ampdu_ack_len; TYPE_1__* rates; scalar_t__ ack_signal; } ;
struct ieee80211_tx_info {int flags; TYPE_3__ status; } ;
struct TYPE_4__ {int idx; int flags; int count; } ;


 int IEEE80211_TX_CTL_AMPDU ;
 int IEEE80211_TX_CTL_NO_ACK ;
 int IEEE80211_TX_MAX_RATES ;
 int IEEE80211_TX_RC_USE_RTS_CTS ;
 int IEEE80211_TX_STAT_ACK ;
 int IEEE80211_TX_STAT_AMPDU ;
 int TXDONE_AMPDU ;
 int TXDONE_FALLBACK ;
 int TXDONE_NO_ACK_REQ ;
 int memset (TYPE_3__*,int ,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void rt2x00lib_fill_tx_status(struct rt2x00_dev *rt2x00dev,
         struct ieee80211_tx_info *tx_info,
         struct skb_frame_desc *skbdesc,
         struct txdone_entry_desc *txdesc,
         bool success)
{
 u8 rate_idx, rate_flags, retry_rates;
 int i;

 rate_idx = skbdesc->tx_rate_idx;
 rate_flags = skbdesc->tx_rate_flags;
 retry_rates = test_bit(TXDONE_FALLBACK, &txdesc->flags) ?
     (txdesc->retry + 1) : 1;




 memset(&tx_info->status, 0, sizeof(tx_info->status));
 tx_info->status.ack_signal = 0;







 for (i = 0; i < retry_rates && i < IEEE80211_TX_MAX_RATES; i++) {
  tx_info->status.rates[i].idx = rate_idx - i;
  tx_info->status.rates[i].flags = rate_flags;

  if (rate_idx - i == 0) {




   tx_info->status.rates[i].count = retry_rates - i;
   i++;
   break;
  }
  tx_info->status.rates[i].count = 1;
 }
 if (i < (IEEE80211_TX_MAX_RATES - 1))
  tx_info->status.rates[i].idx = -1;

 if (test_bit(TXDONE_NO_ACK_REQ, &txdesc->flags))
  tx_info->flags |= IEEE80211_TX_CTL_NO_ACK;

 if (!(tx_info->flags & IEEE80211_TX_CTL_NO_ACK)) {
  if (success)
   tx_info->flags |= IEEE80211_TX_STAT_ACK;
  else
   rt2x00dev->low_level_stats.dot11ACKFailureCount++;
 }
 if (test_bit(TXDONE_AMPDU, &txdesc->flags) ||
     tx_info->flags & IEEE80211_TX_CTL_AMPDU) {
  tx_info->flags |= IEEE80211_TX_STAT_AMPDU |
      IEEE80211_TX_CTL_AMPDU;
  tx_info->status.ampdu_len = 1;
  tx_info->status.ampdu_ack_len = success ? 1 : 0;
 }

 if (rate_flags & IEEE80211_TX_RC_USE_RTS_CTS) {
  if (success)
   rt2x00dev->low_level_stats.dot11RTSSuccessCount++;
  else
   rt2x00dev->low_level_stats.dot11RTSFailureCount++;
 }
}
