
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct conf_ap_sleep_settings {int idle_conn_thresh; int max_stations_thresh; int connected_duty_cycle; int idle_duty_cycle; } ;
struct TYPE_2__ {struct conf_ap_sleep_settings ap_sleep; } ;
struct wl18xx_priv {TYPE_1__ conf; } ;
struct wl1271 {struct wl18xx_priv* priv; } ;
struct acx_ap_sleep_cfg {int idle_conn_thresh; int max_stations_thresh; int connected_duty_cycle; int idle_duty_cycle; } ;


 int ACX_AP_SLEEP_CFG ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct acx_ap_sleep_cfg*) ;
 struct acx_ap_sleep_cfg* kzalloc (int,int ) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct acx_ap_sleep_cfg*,int) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_warning (char*,int) ;

int wl18xx_acx_ap_sleep(struct wl1271 *wl)
{
 struct wl18xx_priv *priv = wl->priv;
 struct acx_ap_sleep_cfg *acx;
 struct conf_ap_sleep_settings *conf = &priv->conf.ap_sleep;
 int ret;

 wl1271_debug(DEBUG_ACX, "acx config ap sleep");

 acx = kzalloc(sizeof(*acx), GFP_KERNEL);
 if (!acx) {
  ret = -ENOMEM;
  goto out;
 }

 acx->idle_duty_cycle = conf->idle_duty_cycle;
 acx->connected_duty_cycle = conf->connected_duty_cycle;
 acx->max_stations_thresh = conf->max_stations_thresh;
 acx->idle_conn_thresh = conf->idle_conn_thresh;

 ret = wl1271_cmd_configure(wl, ACX_AP_SLEEP_CFG, acx, sizeof(*acx));
 if (ret < 0) {
  wl1271_warning("acx config ap-sleep failed: %d", ret);
  goto out;
 }

out:
 kfree(acx);
 return ret;
}
