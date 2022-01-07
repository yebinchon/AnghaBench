
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_6__ {struct rtl_btc_ops* btc_ops; } ;
struct rtl_priv {TYPE_1__* hw; TYPE_3__* cfg; TYPE_2__ btcoexist; } ;
struct rtl_btc_ops {int (* btc_get_ampdu_cfg ) (struct rtl_priv*,scalar_t__*,scalar_t__*,scalar_t__*) ;} ;
struct TYPE_8__ {scalar_t__ (* get_btc_status ) () ;} ;
struct TYPE_7__ {TYPE_4__* ops; } ;
struct TYPE_5__ {scalar_t__ max_rx_aggregation_subframes; } ;


 int COMP_BT_COEXIST ;
 int DBG_DMESG ;
 scalar_t__ IEEE80211_MAX_AMPDU_BUF_HT ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ stub1 () ;
 int stub2 (struct rtl_priv*,scalar_t__*,scalar_t__*,scalar_t__*) ;

void rtl_rx_ampdu_apply(struct rtl_priv *rtlpriv)
{
 struct rtl_btc_ops *btc_ops = rtlpriv->btcoexist.btc_ops;
 u8 reject_agg = 0, ctrl_agg_size = 0, agg_size = 0;

 if (rtlpriv->cfg->ops->get_btc_status())
  btc_ops->btc_get_ampdu_cfg(rtlpriv, &reject_agg,
        &ctrl_agg_size, &agg_size);

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
   "Set RX AMPDU: coex - reject=%d, ctrl_agg_size=%d, size=%d",
   reject_agg, ctrl_agg_size, agg_size);

 rtlpriv->hw->max_rx_aggregation_subframes =
  (ctrl_agg_size ? agg_size : IEEE80211_MAX_AMPDU_BUF_HT);
}
