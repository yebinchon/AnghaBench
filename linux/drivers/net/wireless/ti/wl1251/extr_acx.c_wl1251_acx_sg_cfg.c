
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {int dummy; } ;
struct acx_bt_wlan_coex_param {int bt_hp_respected_num; int pta_auto_mode_enable; int pa_sd_enable; int ack_mode_dual_ant; int bt_anti_starvation_cycles; int wlan_elp_hp; int missed_rx_avalanche; int bt_packets_num; int wlan_packets_num; int max_cts; int quiet_cycle_num; int afh_leverage_on; int signal_type; int antenna_type; int next_wlan_packet; int hp_dm_max_guard_time; int wake_up_beacon; int next_bt_lp_packet; int bt_anti_starvation_period; int wlan_cycle_fast; int tx_time_bt_hp_fast; int rx_time_bt_hp_fast; int tx_time_bt_hp; int rx_time_bt_hp; int sense_disable_timer; int wlan_hp_max_time; int bt_hp_max_time; int min_rate; } ;


 int ACX_SG_CFG ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PTA_ACK_MODE_DEF ;
 int PTA_AFH_LEVERAGE_ON_DEF ;
 int PTA_ALLOW_PA_SD_DEF ;
 int PTA_ANTENNA_TYPE_DEF ;
 int PTA_ANTI_STARVE_NUM_CYCLE_DEF ;
 int PTA_ANTI_STARVE_PERIOD_DEF ;
 int PTA_AUTO_MODE_NO_CTS_DEF ;
 int PTA_BT_HP_MAXTIME_DEF ;
 int PTA_BT_HP_RESPECTED_DEF ;
 int PTA_CYCLE_TIME_FAST_DEF ;
 int PTA_ELP_HP_DEF ;
 int PTA_HPDM_MAX_TIME_DEF ;
 int PTA_MAX_NUM_CTS_DEF ;
 int PTA_NUMBER_OF_BT_PACKETS_DEF ;
 int PTA_NUMBER_OF_WLAN_PACKETS_DEF ;
 int PTA_NUMBER_QUIET_CYCLE_DEF ;
 int PTA_PROTECTIVE_RX_TIME_DEF ;
 int PTA_PROTECTIVE_RX_TIME_FAST_DEF ;
 int PTA_PROTECTIVE_TX_TIME_DEF ;
 int PTA_PROTECTIVE_TX_TIME_FAST_DEF ;
 int PTA_RX_FOR_AVALANCHE_DEF ;
 int PTA_SENSE_DISABLE_TIMER_DEF ;
 int PTA_SIGNALING_TYPE_DEF ;
 int PTA_TIMEOUT_NEXT_BT_LP_PACKET_DEF ;
 int PTA_TIME_BEFORE_BEACON_DEF ;
 int PTA_TIME_OUT_NEXT_WLAN_DEF ;
 int PTA_WLAN_HP_MAX_TIME_DEF ;
 int RATE_INDEX_24MBPS ;
 int kfree (struct acx_bt_wlan_coex_param*) ;
 struct acx_bt_wlan_coex_param* kzalloc (int,int ) ;
 int wl1251_cmd_configure (struct wl1251*,int ,struct acx_bt_wlan_coex_param*,int) ;
 int wl1251_debug (int ,char*) ;
 int wl1251_warning (char*,int) ;

int wl1251_acx_sg_cfg(struct wl1251 *wl)
{
 struct acx_bt_wlan_coex_param *param;
 int ret;

 wl1251_debug(DEBUG_ACX, "acx sg cfg");

 param = kzalloc(sizeof(*param), GFP_KERNEL);
 if (!param)
  return -ENOMEM;


 param->min_rate = RATE_INDEX_24MBPS;
 param->bt_hp_max_time = PTA_BT_HP_MAXTIME_DEF;
 param->wlan_hp_max_time = PTA_WLAN_HP_MAX_TIME_DEF;
 param->sense_disable_timer = PTA_SENSE_DISABLE_TIMER_DEF;
 param->rx_time_bt_hp = PTA_PROTECTIVE_RX_TIME_DEF;
 param->tx_time_bt_hp = PTA_PROTECTIVE_TX_TIME_DEF;
 param->rx_time_bt_hp_fast = PTA_PROTECTIVE_RX_TIME_FAST_DEF;
 param->tx_time_bt_hp_fast = PTA_PROTECTIVE_TX_TIME_FAST_DEF;
 param->wlan_cycle_fast = PTA_CYCLE_TIME_FAST_DEF;
 param->bt_anti_starvation_period = PTA_ANTI_STARVE_PERIOD_DEF;
 param->next_bt_lp_packet = PTA_TIMEOUT_NEXT_BT_LP_PACKET_DEF;
 param->wake_up_beacon = PTA_TIME_BEFORE_BEACON_DEF;
 param->hp_dm_max_guard_time = PTA_HPDM_MAX_TIME_DEF;
 param->next_wlan_packet = PTA_TIME_OUT_NEXT_WLAN_DEF;
 param->antenna_type = PTA_ANTENNA_TYPE_DEF;
 param->signal_type = PTA_SIGNALING_TYPE_DEF;
 param->afh_leverage_on = PTA_AFH_LEVERAGE_ON_DEF;
 param->quiet_cycle_num = PTA_NUMBER_QUIET_CYCLE_DEF;
 param->max_cts = PTA_MAX_NUM_CTS_DEF;
 param->wlan_packets_num = PTA_NUMBER_OF_WLAN_PACKETS_DEF;
 param->bt_packets_num = PTA_NUMBER_OF_BT_PACKETS_DEF;
 param->missed_rx_avalanche = PTA_RX_FOR_AVALANCHE_DEF;
 param->wlan_elp_hp = PTA_ELP_HP_DEF;
 param->bt_anti_starvation_cycles = PTA_ANTI_STARVE_NUM_CYCLE_DEF;
 param->ack_mode_dual_ant = PTA_ACK_MODE_DEF;
 param->pa_sd_enable = PTA_ALLOW_PA_SD_DEF;
 param->pta_auto_mode_enable = PTA_AUTO_MODE_NO_CTS_DEF;
 param->bt_hp_respected_num = PTA_BT_HP_RESPECTED_DEF;

 ret = wl1251_cmd_configure(wl, ACX_SG_CFG, param, sizeof(*param));
 if (ret < 0) {
  wl1251_warning("failed to set sg config: %d", ret);
  goto out;
 }

out:
 kfree(param);
 return ret;
}
