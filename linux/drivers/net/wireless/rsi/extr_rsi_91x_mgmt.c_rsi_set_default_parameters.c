
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pll_mode; int rf_type; int afe_type; scalar_t__ ps_options; scalar_t__ sifs_tx_enable; scalar_t__ dpd; scalar_t__ enable_ppe; scalar_t__ wireless_mode; } ;
struct rsi_common {int channel; int min_rate; int iface_down; int driver_mode; int ulp_ps_handshake_mode; int obm_ant_sel_val; TYPE_1__ w9116_features; int dtim_cnt; int beacon_interval; scalar_t__ wlan_rf_power_mode; scalar_t__ rf_power_val; scalar_t__ lp_ps_handshake_mode; int endpoint; int fsm_state; int rts_threshold; int channel_width; int band; } ;


 int BW_20MHZ ;
 int EP_2GHZ_20MHZ ;
 int FSM_CARD_NOT_READY ;
 int IEEE80211_MAX_RTS_THRESHOLD ;
 int NL80211_BAND_2GHZ ;
 int RSI_BEACON_INTERVAL ;
 int RSI_DTIM_COUNT ;

__attribute__((used)) static void rsi_set_default_parameters(struct rsi_common *common)
{
 common->band = NL80211_BAND_2GHZ;
 common->channel_width = BW_20MHZ;
 common->rts_threshold = IEEE80211_MAX_RTS_THRESHOLD;
 common->channel = 1;
 common->min_rate = 0xffff;
 common->fsm_state = FSM_CARD_NOT_READY;
 common->iface_down = 1;
 common->endpoint = EP_2GHZ_20MHZ;
 common->driver_mode = 1;
 common->lp_ps_handshake_mode = 0;
 common->ulp_ps_handshake_mode = 2;
 common->rf_power_val = 0;
 common->wlan_rf_power_mode = 0;
 common->obm_ant_sel_val = 2;
 common->beacon_interval = RSI_BEACON_INTERVAL;
 common->dtim_cnt = RSI_DTIM_COUNT;
 common->w9116_features.pll_mode = 0x0;
 common->w9116_features.rf_type = 1;
 common->w9116_features.wireless_mode = 0;
 common->w9116_features.enable_ppe = 0;
 common->w9116_features.afe_type = 1;
 common->w9116_features.dpd = 0;
 common->w9116_features.sifs_tx_enable = 0;
 common->w9116_features.ps_options = 0;
}
