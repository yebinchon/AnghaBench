
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t u8 ;
struct sk_buff {int dummy; } ;
struct rtl_sta_info {TYPE_3__* tids; } ;
struct TYPE_12__ {int waitq_lock; } ;
struct TYPE_11__ {int * skb_waitq; } ;
struct TYPE_10__ {int * higher_busytxtraffic; } ;
struct TYPE_7__ {int earlymode_enable; } ;
struct rtl_priv {TYPE_6__ locks; TYPE_5__ mac80211; TYPE_4__ link_info; TYPE_1__ rtlhal; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct ieee80211_hw {int dummy; } ;
typedef int __le16 ;
struct TYPE_8__ {scalar_t__ agg_state; } ;
struct TYPE_9__ {TYPE_2__ agg; } ;


 scalar_t__ RTL_AGG_OPERATIONAL ;
 scalar_t__ VO_QUEUE ;
 scalar_t__ _rtl_mac_to_hwqueue (struct ieee80211_hw*,struct sk_buff*) ;
 scalar_t__ ieee80211_is_nullfunc (int ) ;
 scalar_t__ ieee80211_is_pspoll (int ) ;
 scalar_t__ ieee80211_is_qos_nullfunc (int ) ;
 int rtl_get_fc (struct sk_buff*) ;
 size_t rtl_get_tid (struct sk_buff*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static bool rtl_pci_tx_chk_waitq_insert(struct ieee80211_hw *hw,
     struct ieee80211_sta *sta,
     struct sk_buff *skb)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_sta_info *sta_entry = ((void*)0);
 u8 tid = rtl_get_tid(skb);
 __le16 fc = rtl_get_fc(skb);

 if (!sta)
  return 0;
 sta_entry = (struct rtl_sta_info *)sta->drv_priv;

 if (!rtlpriv->rtlhal.earlymode_enable)
  return 0;
 if (ieee80211_is_nullfunc(fc))
  return 0;
 if (ieee80211_is_qos_nullfunc(fc))
  return 0;
 if (ieee80211_is_pspoll(fc))
  return 0;
 if (sta_entry->tids[tid].agg.agg_state != RTL_AGG_OPERATIONAL)
  return 0;
 if (_rtl_mac_to_hwqueue(hw, skb) > VO_QUEUE)
  return 0;
 if (tid > 7)
  return 0;


 if (!rtlpriv->link_info.higher_busytxtraffic[tid])
  return 0;

 spin_lock_bh(&rtlpriv->locks.waitq_lock);
 skb_queue_tail(&rtlpriv->mac80211.skb_waitq[tid], skb);
 spin_unlock_bh(&rtlpriv->locks.waitq_lock);

 return 1;
}
