
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {int len; int data; } ;
struct rtl_priv {int dummy; } ;
struct ieee80211_rx_status {int signal; scalar_t__ rate_idx; int flag; int band; int freq; int member_0; } ;
struct TYPE_5__ {TYPE_1__* chan; } ;
struct TYPE_6__ {TYPE_2__ chandef; } ;
struct ieee80211_hw {TYPE_3__ conf; } ;
struct ieee80211_hdr {int addr3; int addr2; } ;
typedef int rx_status ;
struct TYPE_4__ {int band; int center_freq; } ;


 int COMP_INIT ;
 int DBG_DMESG ;
 int IEEE80211_SKB_RXCB (struct sk_buff*) ;
 int RT_PRINT_DATA (struct rtl_priv*,int ,int ,char*,int ,int ) ;
 int RX_FLAG_DECRYPTED ;
 int RX_FLAG_MACTIME_START ;
 int ieee80211_rx_irqsafe (struct ieee80211_hw*,struct sk_buff*) ;
 int memcpy (int ,struct ieee80211_rx_status*,int) ;
 struct sk_buff* rtl_make_del_ba (struct ieee80211_hw*,int ,int ,int ) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void process_agg_start(struct ieee80211_hw *hw,
         struct ieee80211_hdr *hdr, u16 tid)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct ieee80211_rx_status rx_status = { 0 };
 struct sk_buff *skb_delba = ((void*)0);

 skb_delba = rtl_make_del_ba(hw, hdr->addr2, hdr->addr3, tid);
 if (skb_delba) {
  rx_status.freq = hw->conf.chandef.chan->center_freq;
  rx_status.band = hw->conf.chandef.chan->band;
  rx_status.flag |= RX_FLAG_DECRYPTED;
  rx_status.flag |= RX_FLAG_MACTIME_START;
  rx_status.rate_idx = 0;
  rx_status.signal = 50 + 10;
  memcpy(IEEE80211_SKB_RXCB(skb_delba),
         &rx_status, sizeof(rx_status));
  RT_PRINT_DATA(rtlpriv, COMP_INIT, DBG_DMESG,
         "fake del\n",
         skb_delba->data,
         skb_delba->len);
  ieee80211_rx_irqsafe(hw, skb_delba);
 }
}
