
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wl12xx_vif {int role_id; } ;
struct wl1271_acx_ap_max_tx_retry {int max_tx_retry; int role_id; } ;
struct TYPE_3__ {int max_tx_retries; } ;
struct TYPE_4__ {TYPE_1__ tx; } ;
struct wl1271 {TYPE_2__ conf; } ;


 int ACX_MAX_TX_FAILURE ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int cpu_to_le16 (int ) ;
 int kfree (struct wl1271_acx_ap_max_tx_retry*) ;
 struct wl1271_acx_ap_max_tx_retry* kzalloc (int,int ) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct wl1271_acx_ap_max_tx_retry*,int) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_warning (char*,int) ;

int wl1271_acx_ap_max_tx_retry(struct wl1271 *wl, struct wl12xx_vif *wlvif)
{
 struct wl1271_acx_ap_max_tx_retry *acx = ((void*)0);
 int ret;

 wl1271_debug(DEBUG_ACX, "acx ap max tx retry");

 acx = kzalloc(sizeof(*acx), GFP_KERNEL);
 if (!acx)
  return -ENOMEM;

 acx->role_id = wlvif->role_id;
 acx->max_tx_retry = cpu_to_le16(wl->conf.tx.max_tx_retries);

 ret = wl1271_cmd_configure(wl, ACX_MAX_TX_FAILURE, acx, sizeof(*acx));
 if (ret < 0) {
  wl1271_warning("acx ap max tx retry failed: %d", ret);
  goto out;
 }

out:
 kfree(acx);
 return ret;
}
