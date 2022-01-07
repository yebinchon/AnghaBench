
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct rtl_efuse {int * dev_addr; } ;
struct TYPE_5__ {void* reason_code; void* params; int action_code; } ;
struct TYPE_6__ {TYPE_1__ delba; } ;
struct TYPE_7__ {TYPE_2__ u; int category; } ;
struct TYPE_8__ {TYPE_3__ action; } ;
struct ieee80211_mgmt {TYPE_4__ u; void* frame_control; int bssid; int da; int sa; } ;
struct ieee80211_hw {int extra_tx_headroom; } ;


 int ETH_ALEN ;
 int IEEE80211_FTYPE_MGMT ;
 int IEEE80211_STYPE_ACTION ;
 int WLAN_ACTION_DELBA ;
 int WLAN_CATEGORY_BACK ;
 int WLAN_REASON_QSTA_TIMEOUT ;
 void* cpu_to_le16 (int) ;
 struct sk_buff* dev_alloc_skb (int ) ;
 int memcpy (int ,int *,int ) ;
 struct rtl_efuse* rtl_efuse (int ) ;
 int rtl_priv (struct ieee80211_hw*) ;
 struct ieee80211_mgmt* skb_put_zero (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int ) ;

struct sk_buff *rtl_make_del_ba(struct ieee80211_hw *hw,
    u8 *sa, u8 *bssid, u16 tid)
{
 struct rtl_efuse *rtlefuse = rtl_efuse(rtl_priv(hw));
 struct sk_buff *skb;
 struct ieee80211_mgmt *action_frame;
 u16 params;


 skb = dev_alloc_skb(34 + hw->extra_tx_headroom);
 if (!skb)
  return ((void*)0);

 skb_reserve(skb, hw->extra_tx_headroom);
 action_frame = skb_put_zero(skb, 34);
 memcpy(action_frame->sa, sa, ETH_ALEN);
 memcpy(action_frame->da, rtlefuse->dev_addr, ETH_ALEN);
 memcpy(action_frame->bssid, bssid, ETH_ALEN);
 action_frame->frame_control = cpu_to_le16(IEEE80211_FTYPE_MGMT |
        IEEE80211_STYPE_ACTION);
 action_frame->u.action.category = WLAN_CATEGORY_BACK;
 action_frame->u.action.u.delba.action_code = WLAN_ACTION_DELBA;
 params = (u16)(1 << 11);
 params |= (u16)(tid << 12);

 action_frame->u.action.u.delba.params = cpu_to_le16(params);
 action_frame->u.action.u.delba.reason_code =
  cpu_to_le16(WLAN_REASON_QSTA_TIMEOUT);

 return skb;
}
