
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wl12xx_vif {int role_id; } ;
struct wl1271_cmd_ps_params {int auto_ps_timeout; int ps_mode; int role_id; } ;
struct wl1271 {int dummy; } ;


 int CMD_SET_PS_MODE ;
 int DEBUG_CMD ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct wl1271_cmd_ps_params*) ;
 struct wl1271_cmd_ps_params* kzalloc (int,int ) ;
 int wl1271_cmd_send (struct wl1271*,int ,struct wl1271_cmd_ps_params*,int,int ) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_error (char*) ;

int wl1271_cmd_ps_mode(struct wl1271 *wl, struct wl12xx_vif *wlvif,
         u8 ps_mode, u16 auto_ps_timeout)
{
 struct wl1271_cmd_ps_params *ps_params = ((void*)0);
 int ret = 0;

 wl1271_debug(DEBUG_CMD, "cmd set ps mode");

 ps_params = kzalloc(sizeof(*ps_params), GFP_KERNEL);
 if (!ps_params) {
  ret = -ENOMEM;
  goto out;
 }

 ps_params->role_id = wlvif->role_id;
 ps_params->ps_mode = ps_mode;
 ps_params->auto_ps_timeout = auto_ps_timeout;

 ret = wl1271_cmd_send(wl, CMD_SET_PS_MODE, ps_params,
         sizeof(*ps_params), 0);
 if (ret < 0) {
  wl1271_error("cmd set_ps_mode failed");
  goto out;
 }

out:
 kfree(ps_params);
 return ret;
}
