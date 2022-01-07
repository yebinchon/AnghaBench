
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int * ucast_rate_idx; int bcast_rate_idx; int mgmt_rate_idx; } ;
struct wl12xx_vif {int basic_rate_set; TYPE_3__ ap; } ;
struct TYPE_4__ {int ac_conf_count; } ;
struct TYPE_5__ {TYPE_1__ tx; } ;
struct wl1271 {TYPE_2__ conf; scalar_t__ ofdm_only_ap; } ;
struct conf_tx_rate_class {int enabled_rates; int long_retry_limit; int short_retry_limit; scalar_t__ aflags; } ;


 int CONF_TX_ENABLED_RATES ;
 int CONF_TX_MCS_RATES ;
 int CONF_TX_OFDM_RATES ;
 int DEBUG_AP ;
 int EINVAL ;
 int wl1271_acx_ap_rate_policy (struct wl1271*,struct conf_tx_rate_class*,int ) ;
 int wl1271_debug (int ,char*,int) ;
 int wl1271_tx_min_rate_get (struct wl1271*,int) ;
 int wlcore_hw_ap_get_mimo_wide_rate_mask (struct wl1271*,struct wl12xx_vif*) ;

int wl1271_init_ap_rates(struct wl1271 *wl, struct wl12xx_vif *wlvif)
{
 int i, ret;
 struct conf_tx_rate_class rc;
 u32 supported_rates;

 wl1271_debug(DEBUG_AP, "AP basic rate set: 0x%x",
       wlvif->basic_rate_set);

 if (wlvif->basic_rate_set == 0)
  return -EINVAL;

 rc.enabled_rates = wlvif->basic_rate_set;
 rc.long_retry_limit = 10;
 rc.short_retry_limit = 10;
 rc.aflags = 0;
 ret = wl1271_acx_ap_rate_policy(wl, &rc, wlvif->ap.mgmt_rate_idx);
 if (ret < 0)
  return ret;


 rc.enabled_rates = wl1271_tx_min_rate_get(wl, wlvif->basic_rate_set);
 rc.short_retry_limit = 10;
 rc.long_retry_limit = 10;
 rc.aflags = 0;
 ret = wl1271_acx_ap_rate_policy(wl, &rc, wlvif->ap.bcast_rate_idx);
 if (ret < 0)
  return ret;





 if (wl->ofdm_only_ap && (wlvif->basic_rate_set & CONF_TX_OFDM_RATES))
  supported_rates = CONF_TX_OFDM_RATES;
 else
  supported_rates = CONF_TX_ENABLED_RATES;


 supported_rates |= CONF_TX_MCS_RATES;


 supported_rates |= wlcore_hw_ap_get_mimo_wide_rate_mask(wl, wlvif);


 for (i = 0; i < wl->conf.tx.ac_conf_count; i++) {
  rc.enabled_rates = supported_rates;
  rc.short_retry_limit = 10;
  rc.long_retry_limit = 10;
  rc.aflags = 0;
  ret = wl1271_acx_ap_rate_policy(wl, &rc,
      wlvif->ap.ucast_rate_idx[i]);
  if (ret < 0)
   return ret;
 }

 return 0;
}
