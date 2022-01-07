
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct TYPE_2__ {int agg_state; } ;
struct rtl_tid_data {TYPE_1__ agg; } ;
struct rtl_sta_info {struct rtl_tid_data* tids; } ;
struct rtl_priv {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int addr; scalar_t__ drv_priv; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_SEND ;
 int DBG_DMESG ;
 int EINVAL ;
 int ENXIO ;
 size_t MAX_TID_COUNT ;
 int RTL_AGG_START ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int ,size_t,size_t) ;
 int ieee80211_start_tx_ba_cb_irqsafe (struct ieee80211_vif*,int ,size_t) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 scalar_t__ unlikely (int) ;

int rtl_tx_agg_start(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
       struct ieee80211_sta *sta, u16 tid, u16 *ssn)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_tid_data *tid_data;
 struct rtl_sta_info *sta_entry = ((void*)0);

 if (sta == ((void*)0))
  return -EINVAL;

 if (unlikely(tid >= MAX_TID_COUNT))
  return -EINVAL;

 sta_entry = (struct rtl_sta_info *)sta->drv_priv;
 if (!sta_entry)
  return -ENXIO;
 tid_data = &sta_entry->tids[tid];

 RT_TRACE(rtlpriv, COMP_SEND, DBG_DMESG,
   "on ra = %pM tid = %d seq:%d\n", sta->addr, tid,
   *ssn);

 tid_data->agg.agg_state = RTL_AGG_START;

 ieee80211_start_tx_ba_cb_irqsafe(vif, sta->addr, tid);
 return 0;
}
