
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct wl12xx_vif {int role_id; } ;
struct TYPE_3__ {int bss_lose_timeout; int synch_fail_thold; } ;
struct TYPE_4__ {TYPE_1__ conn; } ;
struct wl1271 {TYPE_2__ conf; } ;
struct acx_conn_monit_params {void* bss_lose_timeout; void* synch_fail_thold; int role_id; } ;


 int ACX_CONN_MONIT_DISABLE_VALUE ;
 int ACX_CONN_MONIT_PARAMS ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* cpu_to_le32 (int ) ;
 int kfree (struct acx_conn_monit_params*) ;
 struct acx_conn_monit_params* kzalloc (int,int ) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct acx_conn_monit_params*,int) ;
 int wl1271_debug (int ,char*,char*) ;
 int wl1271_warning (char*,int) ;

int wl1271_acx_conn_monit_params(struct wl1271 *wl, struct wl12xx_vif *wlvif,
     bool enable)
{
 struct acx_conn_monit_params *acx;
 u32 threshold = ACX_CONN_MONIT_DISABLE_VALUE;
 u32 timeout = ACX_CONN_MONIT_DISABLE_VALUE;
 int ret;

 wl1271_debug(DEBUG_ACX, "acx connection monitor parameters: %s",
       enable ? "enabled" : "disabled");

 acx = kzalloc(sizeof(*acx), GFP_KERNEL);
 if (!acx) {
  ret = -ENOMEM;
  goto out;
 }

 if (enable) {
  threshold = wl->conf.conn.synch_fail_thold;
  timeout = wl->conf.conn.bss_lose_timeout;
 }

 acx->role_id = wlvif->role_id;
 acx->synch_fail_thold = cpu_to_le32(threshold);
 acx->bss_lose_timeout = cpu_to_le32(timeout);

 ret = wl1271_cmd_configure(wl, ACX_CONN_MONIT_PARAMS,
       acx, sizeof(*acx));
 if (ret < 0) {
  wl1271_warning("failed to set connection monitor "
          "parameters: %d", ret);
  goto out;
 }

out:
 kfree(acx);
 return ret;
}
