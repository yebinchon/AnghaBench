
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wl1251 {int mutex; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_tx_queue_params {int txop; scalar_t__ uapsd; int aifs; int cw_max; int cw_min; } ;
struct ieee80211_hw {struct wl1251* priv; } ;
typedef enum wl1251_acx_ps_scheme { ____Placeholder_wl1251_acx_ps_scheme } wl1251_acx_ps_scheme ;


 int CHANNEL_TYPE_EDCF ;
 int DEBUG_MAC80211 ;
 int WL1251_ACX_ACK_POLICY_LEGACY ;
 int WL1251_ACX_PS_SCHEME_LEGACY ;
 int WL1251_ACX_PS_SCHEME_UPSD_TRIGGER ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wl1251_acx_ac_cfg (struct wl1251*,int ,int ,int ,int ,int) ;
 int wl1251_acx_tid_cfg (struct wl1251*,int ,int ,int ,int,int ) ;
 int wl1251_debug (int ,char*,int ) ;
 int wl1251_ps_elp_sleep (struct wl1251*) ;
 int wl1251_ps_elp_wakeup (struct wl1251*) ;
 int wl1251_tx_get_queue (int ) ;

__attribute__((used)) static int wl1251_op_conf_tx(struct ieee80211_hw *hw,
        struct ieee80211_vif *vif, u16 queue,
        const struct ieee80211_tx_queue_params *params)
{
 enum wl1251_acx_ps_scheme ps_scheme;
 struct wl1251 *wl = hw->priv;
 int ret;

 mutex_lock(&wl->mutex);

 wl1251_debug(DEBUG_MAC80211, "mac80211 conf tx %d", queue);

 ret = wl1251_ps_elp_wakeup(wl);
 if (ret < 0)
  goto out;


 ret = wl1251_acx_ac_cfg(wl, wl1251_tx_get_queue(queue),
    params->cw_min, params->cw_max,
    params->aifs, params->txop * 32);
 if (ret < 0)
  goto out_sleep;

 if (params->uapsd)
  ps_scheme = WL1251_ACX_PS_SCHEME_UPSD_TRIGGER;
 else
  ps_scheme = WL1251_ACX_PS_SCHEME_LEGACY;

 ret = wl1251_acx_tid_cfg(wl, wl1251_tx_get_queue(queue),
     CHANNEL_TYPE_EDCF,
     wl1251_tx_get_queue(queue), ps_scheme,
     WL1251_ACX_ACK_POLICY_LEGACY);
 if (ret < 0)
  goto out_sleep;

out_sleep:
 wl1251_ps_elp_sleep(wl);

out:
 mutex_unlock(&wl->mutex);

 return ret;
}
