
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wsm_start {int probe_delay; int * ssid; int ssid_len; int basic_rate_set; int dtim_period; int beacon_interval; int band; int channel_number; int preamble; int mode; } ;
struct wsm_operational_mode {int disable_more_flag_usage; int power_mode; } ;
struct ieee80211_bss_conf {int dtim_period; int beacon_int; int ssid; int ssid_len; int hidden_ssid; int basic_rates; int use_short_preamble; } ;
struct cw1200_common {int join_status; int p2p_ps_modeinfo; TYPE_2__* vif; int link_id_db; int join_dtim_period; int beacon_int; TYPE_1__* channel; } ;
struct TYPE_4__ {scalar_t__ p2p; struct ieee80211_bss_conf bss_conf; } ;
struct TYPE_3__ {int hw_value; int band; } ;


 int CW1200_JOIN_STATUS_AP ;
 int NL80211_BAND_5GHZ ;
 int WSM_JOIN_PREAMBLE_LONG ;
 int WSM_JOIN_PREAMBLE_SHORT ;
 int WSM_PHY_BAND_2_4G ;
 int WSM_PHY_BAND_5G ;
 int WSM_START_MODE_AP ;
 int WSM_START_MODE_P2P_GO ;
 int cw1200_power_mode ;
 int cw1200_rate_mask_to_wsm (struct cw1200_common*,int ) ;
 int cw1200_update_filtering (struct cw1200_common*) ;
 int cw1200_upload_keys (struct cw1200_common*) ;
 int memcpy (int *,int ,int ) ;
 int memset (int *,int ,int) ;
 int pr_debug (char*,...) ;
 int wsm_set_block_ack_policy (struct cw1200_common*,int ,int ) ;
 int wsm_set_operational_mode (struct cw1200_common*,struct wsm_operational_mode*) ;
 int wsm_set_p2p_ps_modeinfo (struct cw1200_common*,int *) ;
 int wsm_start (struct cw1200_common*,struct wsm_start*) ;

__attribute__((used)) static int cw1200_start_ap(struct cw1200_common *priv)
{
 int ret;
 struct ieee80211_bss_conf *conf = &priv->vif->bss_conf;
 struct wsm_start start = {
  .mode = priv->vif->p2p ?
    WSM_START_MODE_P2P_GO : WSM_START_MODE_AP,
  .band = (priv->channel->band == NL80211_BAND_5GHZ) ?
    WSM_PHY_BAND_5G : WSM_PHY_BAND_2_4G,
  .channel_number = priv->channel->hw_value,
  .beacon_interval = conf->beacon_int,
  .dtim_period = conf->dtim_period,
  .preamble = conf->use_short_preamble ?
    WSM_JOIN_PREAMBLE_SHORT :
    WSM_JOIN_PREAMBLE_LONG,
  .probe_delay = 100,
  .basic_rate_set = cw1200_rate_mask_to_wsm(priv,
    conf->basic_rates),
 };
 struct wsm_operational_mode mode = {
  .power_mode = cw1200_power_mode,
  .disable_more_flag_usage = 1,
 };

 memset(start.ssid, 0, sizeof(start.ssid));
 if (!conf->hidden_ssid) {
  start.ssid_len = conf->ssid_len;
  memcpy(start.ssid, conf->ssid, start.ssid_len);
 }

 priv->beacon_int = conf->beacon_int;
 priv->join_dtim_period = conf->dtim_period;

 memset(&priv->link_id_db, 0, sizeof(priv->link_id_db));

 pr_debug("[AP] ch: %d(%d), bcn: %d(%d), brt: 0x%.8X, ssid: %.*s.\n",
   start.channel_number, start.band,
   start.beacon_interval, start.dtim_period,
   start.basic_rate_set,
   start.ssid_len, start.ssid);
 ret = wsm_start(priv, &start);
 if (!ret)
  ret = cw1200_upload_keys(priv);
 if (!ret && priv->vif->p2p) {
  pr_debug("[AP] Setting p2p powersave configuration.\n");
  wsm_set_p2p_ps_modeinfo(priv, &priv->p2p_ps_modeinfo);
 }
 if (!ret) {
  wsm_set_block_ack_policy(priv, 0, 0);
  priv->join_status = CW1200_JOIN_STATUS_AP;
  cw1200_update_filtering(priv);
 }
 wsm_set_operational_mode(priv, &mode);
 return ret;
}
