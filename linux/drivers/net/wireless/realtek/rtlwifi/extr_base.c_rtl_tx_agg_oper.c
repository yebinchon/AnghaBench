
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u16 ;
struct rtl_sta_info {TYPE_2__* tids; } ;
struct rtl_priv {int dummy; } ;
struct ieee80211_sta {scalar_t__ drv_priv; int addr; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_3__ {int agg_state; } ;
struct TYPE_4__ {TYPE_1__ agg; } ;


 int COMP_SEND ;
 int DBG_DMESG ;
 int EINVAL ;
 size_t MAX_TID_COUNT ;
 int RTL_AGG_OPERATIONAL ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int ,size_t) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 scalar_t__ unlikely (int) ;

int rtl_tx_agg_oper(struct ieee80211_hw *hw,
  struct ieee80211_sta *sta, u16 tid)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_sta_info *sta_entry = ((void*)0);

 if (sta == ((void*)0))
  return -EINVAL;

 RT_TRACE(rtlpriv, COMP_SEND, DBG_DMESG,
   "on ra = %pM tid = %d\n", sta->addr, tid);

 if (unlikely(tid >= MAX_TID_COUNT))
  return -EINVAL;

 sta_entry = (struct rtl_sta_info *)sta->drv_priv;
 sta_entry->tids[tid].agg.agg_state = RTL_AGG_OPERATIONAL;

 return 0;
}
