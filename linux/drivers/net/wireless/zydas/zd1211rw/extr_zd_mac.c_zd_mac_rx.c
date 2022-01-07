
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_5__ {int n_bitrates; TYPE_1__* bitrates; } ;
struct zd_mac {int pass_ctrl; TYPE_2__ band; int chip; scalar_t__ pass_failed_fcs; } ;
struct sk_buff {int dummy; } ;
struct rx_status {int frame_status; int signal_strength; } ;
struct ieee80211_rx_status {int rate_idx; int signal; int band; int freq; int flag; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {int dummy; } ;
typedef int stats ;
typedef int __le16 ;
struct TYPE_6__ {int center_freq; } ;
struct TYPE_4__ {scalar_t__ hw_value; } ;


 int EINVAL ;
 int ENOMEM ;
 int FCS_LEN ;
 int IEEE80211_SKB_RXCB (struct sk_buff*) ;
 int NL80211_BAND_2GHZ ;
 int RX_FLAG_FAILED_FCS_CRC ;
 int ZD_PLCP_HEADER_SIZE ;
 int ZD_RX_CRC32_ERROR ;
 int ZD_RX_ERROR ;
 int _zd_chip_get_channel (int *) ;
 struct sk_buff* dev_alloc_skb (unsigned int) ;
 scalar_t__ filter_ack (struct ieee80211_hw*,struct ieee80211_hdr*,struct ieee80211_rx_status*) ;
 int get_unaligned (int *) ;
 int ieee80211_has_a4 (int ) ;
 int ieee80211_is_data_qos (int ) ;
 int ieee80211_rx_irqsafe (struct ieee80211_hw*,struct sk_buff*) ;
 int memcpy (int ,struct ieee80211_rx_status*,int) ;
 int memset (struct ieee80211_rx_status*,int ,int) ;
 int skb_put_data (struct sk_buff*,scalar_t__ const*,unsigned int) ;
 int skb_reserve (struct sk_buff*,int) ;
 TYPE_3__* zd_channels ;
 int zd_check_signal (struct ieee80211_hw*,int ) ;
 struct zd_mac* zd_hw_mac (struct ieee80211_hw*) ;
 scalar_t__ zd_rx_rate (scalar_t__ const*,struct rx_status const*) ;

int zd_mac_rx(struct ieee80211_hw *hw, const u8 *buffer, unsigned int length)
{
 struct zd_mac *mac = zd_hw_mac(hw);
 struct ieee80211_rx_status stats;
 const struct rx_status *status;
 struct sk_buff *skb;
 int bad_frame = 0;
 __le16 fc;
 int need_padding;
 int i;
 u8 rate;

 if (length < ZD_PLCP_HEADER_SIZE + 10 +
              FCS_LEN + sizeof(struct rx_status))
  return -EINVAL;

 memset(&stats, 0, sizeof(stats));
 status = (struct rx_status *)
  (buffer + (length - sizeof(struct rx_status)));
 if (status->frame_status & ZD_RX_ERROR) {
  if (mac->pass_failed_fcs &&
    (status->frame_status & ZD_RX_CRC32_ERROR)) {
   stats.flag |= RX_FLAG_FAILED_FCS_CRC;
   bad_frame = 1;
  } else {
   return -EINVAL;
  }
 }

 stats.freq = zd_channels[_zd_chip_get_channel(&mac->chip) - 1].center_freq;
 stats.band = NL80211_BAND_2GHZ;
 stats.signal = zd_check_signal(hw, status->signal_strength);

 rate = zd_rx_rate(buffer, status);


 for (i = 0; i < mac->band.n_bitrates; i++)
  if (rate == mac->band.bitrates[i].hw_value)
   stats.rate_idx = i;

 length -= ZD_PLCP_HEADER_SIZE + sizeof(struct rx_status);
 buffer += ZD_PLCP_HEADER_SIZE;






 if (!bad_frame &&
   filter_ack(hw, (struct ieee80211_hdr *)buffer, &stats)
   && !mac->pass_ctrl)
  return 0;

 fc = get_unaligned((__le16*)buffer);
 need_padding = ieee80211_is_data_qos(fc) ^ ieee80211_has_a4(fc);

 skb = dev_alloc_skb(length + (need_padding ? 2 : 0));
 if (skb == ((void*)0))
  return -ENOMEM;
 if (need_padding) {

  skb_reserve(skb, 2);
 }


 skb_put_data(skb, buffer, length);

 memcpy(IEEE80211_SKB_RXCB(skb), &stats, sizeof(stats));
 ieee80211_rx_irqsafe(hw, skb);
 return 0;
}
