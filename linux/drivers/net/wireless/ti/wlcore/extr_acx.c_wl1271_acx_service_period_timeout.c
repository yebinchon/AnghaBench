
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wl12xx_vif {int role_id; } ;
struct TYPE_3__ {int upsd_timeout; int ps_poll_timeout; } ;
struct TYPE_4__ {TYPE_1__ rx; } ;
struct wl1271 {TYPE_2__ conf; } ;
struct acx_rx_timeout {void* upsd_timeout; void* ps_poll_timeout; int role_id; } ;


 int ACX_SERVICE_PERIOD_TIMEOUT ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* cpu_to_le16 (int ) ;
 int kfree (struct acx_rx_timeout*) ;
 struct acx_rx_timeout* kzalloc (int,int ) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct acx_rx_timeout*,int) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_warning (char*,int) ;

int wl1271_acx_service_period_timeout(struct wl1271 *wl,
          struct wl12xx_vif *wlvif)
{
 struct acx_rx_timeout *rx_timeout;
 int ret;

 rx_timeout = kzalloc(sizeof(*rx_timeout), GFP_KERNEL);
 if (!rx_timeout) {
  ret = -ENOMEM;
  goto out;
 }

 wl1271_debug(DEBUG_ACX, "acx service period timeout");

 rx_timeout->role_id = wlvif->role_id;
 rx_timeout->ps_poll_timeout = cpu_to_le16(wl->conf.rx.ps_poll_timeout);
 rx_timeout->upsd_timeout = cpu_to_le16(wl->conf.rx.upsd_timeout);

 ret = wl1271_cmd_configure(wl, ACX_SERVICE_PERIOD_TIMEOUT,
       rx_timeout, sizeof(*rx_timeout));
 if (ret < 0) {
  wl1271_warning("failed to set service period timeout: %d",
          ret);
  goto out;
 }

out:
 kfree(rx_timeout);
 return ret;
}
