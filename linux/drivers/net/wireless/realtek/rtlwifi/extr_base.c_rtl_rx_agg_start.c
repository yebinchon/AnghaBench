
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef size_t u16 ;
struct TYPE_10__ {int rx_agg_state; } ;
struct rtl_tid_data {TYPE_5__ agg; } ;
struct rtl_sta_info {struct rtl_tid_data* tids; } ;
struct TYPE_9__ {TYPE_3__* btc_ops; } ;
struct rtl_priv {TYPE_4__ btcoexist; TYPE_2__* cfg; } ;
struct ieee80211_sta {int addr; scalar_t__ drv_priv; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_8__ {int (* btc_get_ampdu_cfg ) (struct rtl_priv*,scalar_t__*,int *,int *) ;} ;
struct TYPE_7__ {TYPE_1__* ops; } ;
struct TYPE_6__ {scalar_t__ (* get_btc_status ) () ;} ;


 int COMP_RECV ;
 int DBG_DMESG ;
 int EINVAL ;
 int ENXIO ;
 size_t MAX_TID_COUNT ;
 int RTL_RX_AGG_START ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int ,size_t) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 scalar_t__ stub1 () ;
 int stub2 (struct rtl_priv*,scalar_t__*,int *,int *) ;
 scalar_t__ unlikely (int) ;

int rtl_rx_agg_start(struct ieee80211_hw *hw,
       struct ieee80211_sta *sta, u16 tid)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_tid_data *tid_data;
 struct rtl_sta_info *sta_entry = ((void*)0);
 u8 reject_agg;

 if (sta == ((void*)0))
  return -EINVAL;

 if (unlikely(tid >= MAX_TID_COUNT))
  return -EINVAL;

 if (rtlpriv->cfg->ops->get_btc_status()) {
  rtlpriv->btcoexist.btc_ops->btc_get_ampdu_cfg(rtlpriv,
             &reject_agg,
             ((void*)0), ((void*)0));
  if (reject_agg)
   return -EINVAL;
 }

 sta_entry = (struct rtl_sta_info *)sta->drv_priv;
 if (!sta_entry)
  return -ENXIO;
 tid_data = &sta_entry->tids[tid];

 RT_TRACE(rtlpriv, COMP_RECV, DBG_DMESG,
   "on ra = %pM tid = %d\n", sta->addr, tid);

 tid_data->agg.rx_agg_state = RTL_RX_AGG_START;
 return 0;
}
