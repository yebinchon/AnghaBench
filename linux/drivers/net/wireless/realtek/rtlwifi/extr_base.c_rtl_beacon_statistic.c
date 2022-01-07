
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct TYPE_3__ {int bcn_rx_inperiod; } ;
struct TYPE_4__ {scalar_t__ opmode; scalar_t__ link_state; int bssid; } ;
struct rtl_priv {TYPE_1__ link_info; TYPE_2__ mac80211; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {int addr3; int frame_control; } ;


 scalar_t__ FCS_LEN ;
 scalar_t__ MAC80211_LINKED ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int ether_addr_equal (int ,int ) ;
 int ieee80211_is_beacon (int ) ;
 int ieee80211_is_probe_resp (int ) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

void rtl_beacon_statistic(struct ieee80211_hw *hw, struct sk_buff *skb)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;

 if (rtlpriv->mac80211.opmode != NL80211_IFTYPE_STATION)
  return;

 if (rtlpriv->mac80211.link_state < MAC80211_LINKED)
  return;


 if (!ieee80211_is_beacon(hdr->frame_control) &&
     !ieee80211_is_probe_resp(hdr->frame_control))
  return;


 if (skb->len <= 40 + FCS_LEN)
  return;


 if (!ether_addr_equal(hdr->addr3, rtlpriv->mac80211.bssid))
  return;

 rtlpriv->link_info.bcn_rx_inperiod++;
}
