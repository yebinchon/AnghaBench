
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;


 int BT_AGCTABLE_OFF ;
 int BT_BB_BACKOFF_OFF ;
 int BT_RF_RX_LPF_CORNER_RESUME ;
 int BT_TX_RATE_ADAPTIVE_NORMAL ;
 int dm_bt_set_sw_penalty_tx_rate_adapt (struct ieee80211_hw*,int ) ;
 int rtl8723e_dm_bt_agc_table (struct ieee80211_hw*,int ) ;
 int rtl8723e_dm_bt_bb_back_off_level (struct ieee80211_hw*,int ) ;
 int rtl8723e_dm_bt_reject_ap_aggregated_packet (struct ieee80211_hw*,int) ;
 int rtl8723e_dm_bt_set_sw_full_time_dac_swing (struct ieee80211_hw*,int,int) ;
 int rtl8723e_dm_bt_set_sw_rf_rx_lpf_corner (struct ieee80211_hw*,int ) ;

void rtl8723e_dm_bt_sw_coex_all_off_8723a(struct ieee80211_hw *hw)
{
 rtl8723e_dm_bt_agc_table(hw, BT_AGCTABLE_OFF);
 rtl8723e_dm_bt_bb_back_off_level(hw, BT_BB_BACKOFF_OFF);
 rtl8723e_dm_bt_reject_ap_aggregated_packet(hw, 0);

 dm_bt_set_sw_penalty_tx_rate_adapt(hw, BT_TX_RATE_ADAPTIVE_NORMAL);
 rtl8723e_dm_bt_set_sw_rf_rx_lpf_corner(hw, BT_RF_RX_LPF_CORNER_RESUME);
 rtl8723e_dm_bt_set_sw_full_time_dac_swing(hw, 0, 0xc0);
}
