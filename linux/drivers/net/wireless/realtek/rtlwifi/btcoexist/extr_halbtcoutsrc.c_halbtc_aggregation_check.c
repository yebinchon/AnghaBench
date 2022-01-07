
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtl_priv {int dummy; } ;
struct TYPE_2__ {scalar_t__ pre_bt_ctrl_agg_buf_size; scalar_t__ bt_ctrl_agg_buf_size; scalar_t__ pre_agg_buf_size; scalar_t__ agg_buf_size; scalar_t__ reject_agg_pkt; scalar_t__ pre_reject_agg_pkt; } ;
struct btc_coexist {TYPE_1__ bt_info; struct rtl_priv* adapter; } ;


 unsigned long jiffies ;
 int jiffies_to_msecs (unsigned long) ;
 int rtl_rx_ampdu_apply (struct rtl_priv*) ;

__attribute__((used)) static void halbtc_aggregation_check(struct btc_coexist *btcoexist)
{
 bool need_to_act = 0;
 static unsigned long pre_time;
 unsigned long cur_time = 0;
 struct rtl_priv *rtlpriv = btcoexist->adapter;






 cur_time = jiffies;
 if (jiffies_to_msecs(cur_time - pre_time) <= 8000) {

  return;
 }
 pre_time = cur_time;

 if (btcoexist->bt_info.reject_agg_pkt) {
  need_to_act = 1;
  btcoexist->bt_info.pre_reject_agg_pkt =
   btcoexist->bt_info.reject_agg_pkt;
 } else {
  if (btcoexist->bt_info.pre_reject_agg_pkt) {
   need_to_act = 1;
   btcoexist->bt_info.pre_reject_agg_pkt =
    btcoexist->bt_info.reject_agg_pkt;
  }

  if (btcoexist->bt_info.pre_bt_ctrl_agg_buf_size !=
      btcoexist->bt_info.bt_ctrl_agg_buf_size) {
   need_to_act = 1;
   btcoexist->bt_info.pre_bt_ctrl_agg_buf_size =
    btcoexist->bt_info.bt_ctrl_agg_buf_size;
  }

  if (btcoexist->bt_info.bt_ctrl_agg_buf_size) {
   if (btcoexist->bt_info.pre_agg_buf_size !=
       btcoexist->bt_info.agg_buf_size) {
    need_to_act = 1;
   }
   btcoexist->bt_info.pre_agg_buf_size =
    btcoexist->bt_info.agg_buf_size;
  }

  if (need_to_act)
   rtl_rx_ampdu_apply(rtlpriv);
 }
}
