
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct btc_coexist {int (* btc_set ) (struct btc_coexist*,int ,int*) ;} ;


 int BTC_SET_ACT_AGGREGATE_CTRL ;
 int BTC_SET_BL_BT_CTRL_AGG_SIZE ;
 int BTC_SET_BL_TO_REJ_AP_AGG_PKT ;
 int BTC_SET_U1_AGG_BUF_SIZE ;
 int stub1 (struct btc_coexist*,int ,int*) ;
 int stub2 (struct btc_coexist*,int ,int*) ;
 int stub3 (struct btc_coexist*,int ,int*) ;
 int stub4 (struct btc_coexist*,int ,int*) ;

__attribute__((used)) static
void btc8821a2ant_limited_rx(struct btc_coexist *btcoexist, bool force_exec,
        bool rej_ap_agg_pkt, bool bt_ctrl_agg_buf_size,
        u8 agg_buf_size)
{
 bool reject_rx_agg = rej_ap_agg_pkt;
 bool bt_ctrl_rx_agg_size = bt_ctrl_agg_buf_size;
 u8 rx_agg_size = agg_buf_size;


 btcoexist->btc_set(btcoexist, BTC_SET_BL_TO_REJ_AP_AGG_PKT,
      &reject_rx_agg);

 btcoexist->btc_set(btcoexist, BTC_SET_BL_BT_CTRL_AGG_SIZE,
      &bt_ctrl_rx_agg_size);

 btcoexist->btc_set(btcoexist, BTC_SET_U1_AGG_BUF_SIZE, &rx_agg_size);

 btcoexist->btc_set(btcoexist, BTC_SET_ACT_AGGREGATE_CTRL, ((void*)0));
}
