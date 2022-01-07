
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct rtl_efuse {int * dev_addr; } ;
struct TYPE_5__ {int smps_control; int action; } ;
struct TYPE_6__ {TYPE_1__ ht_smps; } ;
struct TYPE_7__ {TYPE_2__ u; int category; } ;
struct TYPE_8__ {TYPE_3__ action; } ;
struct ieee80211_mgmt {TYPE_4__ u; int frame_control; int bssid; int sa; int da; } ;
struct ieee80211_hw {int extra_tx_headroom; } ;
typedef enum ieee80211_smps_mode { ____Placeholder_ieee80211_smps_mode } ieee80211_smps_mode ;


 int ETH_ALEN ;
 int IEEE80211_FTYPE_MGMT ;





 int IEEE80211_STYPE_ACTION ;
 int WARN_ON (int) ;
 int WLAN_CATEGORY_HT ;
 int WLAN_HT_ACTION_SMPS ;
 int WLAN_HT_SMPS_CONTROL_DISABLED ;
 int WLAN_HT_SMPS_CONTROL_DYNAMIC ;
 int WLAN_HT_SMPS_CONTROL_STATIC ;
 int cpu_to_le16 (int) ;
 struct sk_buff* dev_alloc_skb (int ) ;
 int memcpy (int ,int *,int ) ;
 struct rtl_efuse* rtl_efuse (int ) ;
 int rtl_priv (struct ieee80211_hw*) ;
 struct ieee80211_mgmt* skb_put_zero (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int ) ;

__attribute__((used)) static struct sk_buff *rtl_make_smps_action(struct ieee80211_hw *hw,
         enum ieee80211_smps_mode smps,
         u8 *da, u8 *bssid)
{
 struct rtl_efuse *rtlefuse = rtl_efuse(rtl_priv(hw));
 struct sk_buff *skb;
 struct ieee80211_mgmt *action_frame;


 skb = dev_alloc_skb(27 + hw->extra_tx_headroom);
 if (!skb)
  return ((void*)0);

 skb_reserve(skb, hw->extra_tx_headroom);
 action_frame = skb_put_zero(skb, 27);
 memcpy(action_frame->da, da, ETH_ALEN);
 memcpy(action_frame->sa, rtlefuse->dev_addr, ETH_ALEN);
 memcpy(action_frame->bssid, bssid, ETH_ALEN);
 action_frame->frame_control = cpu_to_le16(IEEE80211_FTYPE_MGMT |
        IEEE80211_STYPE_ACTION);
 action_frame->u.action.category = WLAN_CATEGORY_HT;
 action_frame->u.action.u.ht_smps.action = WLAN_HT_ACTION_SMPS;
 switch (smps) {
 case 132:
 case 130:
  WARN_ON(1);

 case 129:
  action_frame->u.action.u.ht_smps.smps_control =
    WLAN_HT_SMPS_CONTROL_DISABLED;
  break;
 case 128:
  action_frame->u.action.u.ht_smps.smps_control =
    WLAN_HT_SMPS_CONTROL_STATIC;
  break;
 case 131:
  action_frame->u.action.u.ht_smps.smps_control =
    WLAN_HT_SMPS_CONTROL_DYNAMIC;
  break;
 }

 return skb;
}
