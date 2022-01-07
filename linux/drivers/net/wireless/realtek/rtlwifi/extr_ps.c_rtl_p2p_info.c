
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bssid; } ;
struct rtl_priv {TYPE_1__ mac80211; } ;
struct rtl_mac {scalar_t__ link_state; int p2p; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {int frame_control; int addr3; } ;


 int FCS_LEN ;
 scalar_t__ MAC80211_LINKED ;
 int ether_addr_equal_64bits (int ,int ) ;
 scalar_t__ ieee80211_is_action (int ) ;
 scalar_t__ ieee80211_is_beacon (int ) ;
 scalar_t__ ieee80211_is_probe_resp (int ) ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 int rtl_p2p_action_ie (struct ieee80211_hw*,void*,unsigned int) ;
 int rtl_p2p_noa_ie (struct ieee80211_hw*,void*,unsigned int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

void rtl_p2p_info(struct ieee80211_hw *hw, void *data, unsigned int len)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));
 struct ieee80211_hdr *hdr = data;

 if (!mac->p2p)
  return;
 if (mac->link_state != MAC80211_LINKED)
  return;

 if (len <= 40 + FCS_LEN)
  return;


 if (!ether_addr_equal_64bits(hdr->addr3, rtlpriv->mac80211.bssid))
  return;


 if (!(ieee80211_is_beacon(hdr->frame_control) ||
       ieee80211_is_probe_resp(hdr->frame_control) ||
       ieee80211_is_action(hdr->frame_control)))
  return;

 if (ieee80211_is_action(hdr->frame_control))
  rtl_p2p_action_ie(hw , data , len - FCS_LEN);
 else
  rtl_p2p_noa_ie(hw , data , len - FCS_LEN);
}
