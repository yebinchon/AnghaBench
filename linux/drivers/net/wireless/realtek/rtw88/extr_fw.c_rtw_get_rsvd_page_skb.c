
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum rtw_rsvd_packet_type { ____Placeholder_rtw_rsvd_packet_type } rtw_rsvd_packet_type ;







 struct sk_buff* ieee80211_nullfunc_get (struct ieee80211_hw*,struct ieee80211_vif*,int) ;
 struct sk_buff* ieee80211_proberesp_get (struct ieee80211_hw*,struct ieee80211_vif*) ;
 struct sk_buff* ieee80211_pspoll_get (struct ieee80211_hw*,struct ieee80211_vif*) ;
 struct sk_buff* rtw_beacon_get (struct ieee80211_hw*,struct ieee80211_vif*) ;

__attribute__((used)) static struct sk_buff *rtw_get_rsvd_page_skb(struct ieee80211_hw *hw,
          struct ieee80211_vif *vif,
          enum rtw_rsvd_packet_type type)
{
 struct sk_buff *skb_new;

 switch (type) {
 case 132:
  skb_new = rtw_beacon_get(hw, vif);
  break;
 case 129:
  skb_new = ieee80211_pspoll_get(hw, vif);
  break;
 case 130:
  skb_new = ieee80211_proberesp_get(hw, vif);
  break;
 case 131:
  skb_new = ieee80211_nullfunc_get(hw, vif, 0);
  break;
 case 128:
  skb_new = ieee80211_nullfunc_get(hw, vif, 1);
  break;
 default:
  return ((void*)0);
 }

 if (!skb_new)
  return ((void*)0);

 return skb_new;
}
