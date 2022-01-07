
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct sk_buff {scalar_t__ protocol; } ;
struct rtl_sta_info {TYPE_3__* tids; } ;
struct rtl_priv {int dummy; } ;
struct rtl_mac {int hw; } ;
struct ieee80211_supported_band {int dummy; } ;
struct TYPE_4__ {scalar_t__ ht_supported; } ;
struct ieee80211_sta {TYPE_1__ ht_cap; scalar_t__ drv_priv; } ;
struct ieee80211_hdr {int dummy; } ;
typedef int __le16 ;
struct TYPE_5__ {int agg_state; } ;
struct TYPE_6__ {TYPE_2__ agg; } ;


 int ETH_P_PAE ;
 int RTL_AGG_PROGRESS ;
 scalar_t__ _rtl_tx_aggr_check (struct rtl_priv*,struct rtl_sta_info*,size_t) ;
 scalar_t__ cpu_to_be16 (int ) ;
 int ieee80211_get_DA (struct ieee80211_hdr*) ;
 int ieee80211_is_data (int ) ;
 scalar_t__ ieee80211_is_data_qos (int ) ;
 int ieee80211_start_tx_ba_session (struct ieee80211_sta*,size_t,int) ;
 scalar_t__ is_broadcast_ether_addr (int ) ;
 scalar_t__ is_multicast_ether_addr (int ) ;
 int rtl_get_fc (struct sk_buff*) ;
 struct ieee80211_hdr* rtl_get_hdr (struct sk_buff*) ;
 size_t rtl_get_tid (struct sk_buff*) ;
 scalar_t__ rtl_is_special_data (int ,struct sk_buff*,int,int) ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;

__attribute__((used)) static void rtl_tx_status(void *ppriv,
     struct ieee80211_supported_band *sband,
     struct ieee80211_sta *sta, void *priv_sta,
     struct sk_buff *skb)
{
 struct rtl_priv *rtlpriv = ppriv;
 struct rtl_mac *mac = rtl_mac(rtlpriv);
 struct ieee80211_hdr *hdr = rtl_get_hdr(skb);
 __le16 fc = rtl_get_fc(skb);
 struct rtl_sta_info *sta_entry;

 if (!priv_sta || !ieee80211_is_data(fc))
  return;

 if (rtl_is_special_data(mac->hw, skb, 1, 1))
  return;

 if (is_multicast_ether_addr(ieee80211_get_DA(hdr)) ||
     is_broadcast_ether_addr(ieee80211_get_DA(hdr)))
  return;

 if (sta) {

  sta_entry = (struct rtl_sta_info *)sta->drv_priv;
  if (sta->ht_cap.ht_supported &&
      !(skb->protocol == cpu_to_be16(ETH_P_PAE))) {
   if (ieee80211_is_data_qos(fc)) {
    u8 tid = rtl_get_tid(skb);

    if (_rtl_tx_aggr_check(rtlpriv, sta_entry,
             tid)) {
     sta_entry->tids[tid].agg.agg_state =
      RTL_AGG_PROGRESS;
     ieee80211_start_tx_ba_session(sta, tid,
              5000);
    }
   }
  }
 }
}
