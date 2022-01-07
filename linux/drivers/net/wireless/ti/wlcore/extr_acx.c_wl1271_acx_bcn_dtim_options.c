
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wl12xx_vif {int role_id; } ;
struct TYPE_3__ {int ps_poll_threshold; int rx_broadcast_in_ps; int broadcast_timeout; int beacon_rx_timeout; } ;
struct TYPE_4__ {TYPE_1__ conn; } ;
struct wl1271 {TYPE_2__ conf; } ;
struct acx_beacon_broadcast {int ps_poll_threshold; int rx_broadcast_in_ps; void* broadcast_timeout; void* beacon_rx_timeout; int role_id; } ;


 int ACX_BCN_DTIM_OPTIONS ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* cpu_to_le16 (int ) ;
 int kfree (struct acx_beacon_broadcast*) ;
 struct acx_beacon_broadcast* kzalloc (int,int ) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct acx_beacon_broadcast*,int) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_warning (char*,int) ;

int wl1271_acx_bcn_dtim_options(struct wl1271 *wl, struct wl12xx_vif *wlvif)
{
 struct acx_beacon_broadcast *bb;
 int ret;

 wl1271_debug(DEBUG_ACX, "acx bcn dtim options");

 bb = kzalloc(sizeof(*bb), GFP_KERNEL);
 if (!bb) {
  ret = -ENOMEM;
  goto out;
 }

 bb->role_id = wlvif->role_id;
 bb->beacon_rx_timeout = cpu_to_le16(wl->conf.conn.beacon_rx_timeout);
 bb->broadcast_timeout = cpu_to_le16(wl->conf.conn.broadcast_timeout);
 bb->rx_broadcast_in_ps = wl->conf.conn.rx_broadcast_in_ps;
 bb->ps_poll_threshold = wl->conf.conn.ps_poll_threshold;

 ret = wl1271_cmd_configure(wl, ACX_BCN_DTIM_OPTIONS, bb, sizeof(*bb));
 if (ret < 0) {
  wl1271_warning("failed to set rx config: %d", ret);
  goto out;
 }

out:
 kfree(bb);
 return ret;
}
